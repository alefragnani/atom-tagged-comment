TaggedCommentView = require './tagged-comment-view'

module.exports =
  
  config:          
    lastTag:
      type: 'string'
      default: ''
      description: 'The last tag that was added'
      
    lastEnteredText:
      type: 'string'
      default: ''
      description: 'The last tag that you typed'
      
    tagString:
      type: 'string'
      default: '#day/#month/#year - TAG: #enteredText'
      description: 'The tag template that you would like to use (js style)'


  activate: ->
    @view = new TaggedCommentView()

  deactivate: ->
    console.log "deactivate"
    @view?.destroy()
