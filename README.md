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

## Participate

If you have any idea, feel free to create issues and pull requests

## License

[MIT](LICENSE.md) &copy; Alessandro Fragnani

---

[![Paypal Donations](https://www.paypalobjects.com/en_US/i/btn/btn_donate_SM.gif)](https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=EP57F3B6FXKTU&lc=US&item_name=Alessandro%20Fragnani&item_number=atom%20plugins&currency_code=USD&bn=PP%2dDonationsBF%3abtn_donateCC_LG%2egif%3aNonHosted) a :coffee: and you will help me to keep working on this package :wink:

[![Paypal Donations](https://www.paypalobjects.com/pt_BR/i/btn/btn_donate_SM.gif)](https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=EP57F3B6FXKTU&lc=BR&item_name=Alessandro%20Fragnani&item_number=atom%20plugins&currency_code=BRL&bn=PP%2dDonationsBF%3abtn_donate_SM%2egif%3aNonHosted) um :coffee: e voc� vai me ajudar a continuar trabalhando neste pacote :wink:
