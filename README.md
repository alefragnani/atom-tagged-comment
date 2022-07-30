# Tagged Comment Package for Atom

> Following Atom archiving in December 15, 2022, this package will be archived as well. Learn more in their [official announcement](https://github.blog/2022-06-08-sunsetting-atom/)

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

## Support

While **Tagged Comment** is free and open source, if you find it useful, please consider supporting it.

I've been working on this on my spare time, and while I enjoy developing it, I would like to be able to give more attention to its growth

<table align="center" width="60%" border="0">
  <tr>
    <td>
      <a title="Paypal" href="https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=EP57F3B6FXKTU&lc=US&item_name=Alessandro%20Fragnani&item_number=atom%20plugins&currency_code=USD&bn=PP%2dDonationsBF%3abtn_donateCC_LG%2egif%3aNonHosted"><img src="https://www.paypalobjects.com/en_US/i/btn/btn_donate_SM.gif"/></a>
    </td>
    <td>
      <a title="GitHub Sponsors" href="https://github.com/sponsors/alefragnani"><img src="https://raw.githubusercontent.com/alefragnani/oss-resources/master/images/button-become-a-sponsor-rounded-small.png"/></a>
    </td>
    <td>
      <a title="Patreon" href="https://www.patreon.com/alefragnani"><img src="https://raw.githubusercontent.com/alefragnani/oss-resources/master/images/button-become-a-patron-rounded-small.png"/></a>
    </td>
  </tr>
</table>

---

## License

[MIT](LICENSE.md) &copy; Alessandro Fragnani