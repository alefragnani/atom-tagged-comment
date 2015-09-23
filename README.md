# Tagged Comment Package for Atom

An easy way to add personalized comments to your code

Set your own template for the comment and use _variables_ for richer content. You can even _re-tag_ a comment, adding the previously used tag.

It also detects the current language and uses the appropriate comment pattern.

### Type your tag

![Enter Text](https://raw.githubusercontent.com/alefragnani/atom-tagged-comment/master/screenshot-enter-text.png)

### Comment automatically added

![Comment Added](https://raw.githubusercontent.com/alefragnani/atom-tagged-comment/master/screenshot-comment-added.png)

## Available Variables

The following variables are available:

- `#enteredText` (the tag that you typed)
- `#day`
- `#month`
- `#year`

## Examples

### Default

The default template just adds the current date:

```
#day/#month/#year - TAG: #enteredText
```

### With an issue tracker ID

```
#day/#month/#year - ISSUE: #enteredText
```

## TODO List

- Add more variables
- Define a default comment character for _non-language_ files
- Live preview for the tagged comment while typing
- Add tagged comment above selected lines

## Participate

If you have any idea, feel free to create issues and pull requests
