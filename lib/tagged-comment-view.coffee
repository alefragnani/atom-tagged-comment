{$, TextEditorView, View} = require 'atom-space-pen-views'
{BufferedProcess} = require 'atom'

module.exports =
class TaggedCommentView extends View
  previouslyFocusedElement: null

  @content: ->
    @div class: 'tagged-comment', =>
      @subview 'miniEditor', new TextEditorView(mini: true)
      @div class: 'message', outlet: 'message'

  initialize: ->
    console.log "Initialize"
    @commandSubscription = atom.commands.add 'atom-workspace',
      'tagged-comment:tag': => @tag()
      'tagged-comment:re-tag': => @reTag()

    @miniEditor.on 'blur', => @close()
    atom.commands.add @element,
      'core:confirm': => @confirm()
      'core:cancel': => @close()

  destroy: ->
    @panel?.destroy()
    @commandSubscription.dispose()

  close: ->
    return unless @panel.isVisible()
    @panel.hide()
    @previouslyFocusedElement?.focus()

  confirm: ->
    @typedText = @miniEditor.getText().trim()
    atom.config.set('tagged-comment.lastEnteredText', @typedText)
    @theTag = @getComment(@typedText)
    atom.config.set('tagged-comment.lastTag', @theTag)
    @addTagToEditor(@theTag)
    @close()


  setTagText: (placeholderName, rangeToSelect) ->
    editor = @miniEditor.getModel()
    rangeToSelect ?= [0, placeholderName.length]
    @lastEnteredText = atom.config.get('tagged-comment.lastEnteredText')
    @tagString = atom.config.get('tagged-comment.tagString')
    editor.setText(atom.config.get('tagged-comment.lastEnteredText'))
    textLength = editor.getText().length
    editor.setSelectedBufferRange([[0, textLength]])

  tag: ->
    @panel ?= atom.workspace.addModalPanel(item: this, visible: false)
    @previouslyFocusedElement = $(document.activeElement)
    @panel.show()
    @message.text("Enter tag comment")
    @setTagText("???")
    @miniEditor.focus()

  reTag: ->
    @text = atom.config.get('tagged-comment.lastTag')
    if @text != ""
      @addTagToEditor(@text)
    else
      @tag()

  addTagToEditor: (comment) ->
    @editor = atom.workspace.getActiveTextEditor()

    scope = @editor.scopeDescriptorForBufferPosition([0, 0])
    commentStartEntry = atom.config.getAll('editor.commentStart', {scope})[0]

    if commentStartEntry?
      comment = @editor.insertText(commentStartEntry?.value + comment)
    else
      comment = @editor.insertText(comment)
    # @editor.insertText(commentStartEntry?.value) if commentStartEntry?
    # @editor.insertText(comment)


  getComment: (text) ->
    aDate = new Date
    if aDate.getDate().toString().length == 1
      day = "0#{aDate.getDate()}"
    else
      day = "#{aDate.getDate()}"

    if aDate.getMonth().toString().length == 1
      month = "0#{aDate.getMonth() + 1}"
    else
      month = "#{aDate.getMonth()}"

    year = aDate.getFullYear()

    @theTagString = atom.config.get('tagged-comment.tagString')

    @result = @theTagString.replace "#day", day
    @result = @result.replace "#month", month
    @result = @result.replace "#year", year
    @result = @result.replace "#enteredText", text

    return @result
