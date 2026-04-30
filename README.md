# Personal Blog

Hugo blog scaffolded with the [`hugo-bearneo`](https://github.com/rokcso/hugo-bearneo/) theme.

## What's set up

- Hugo site configuration in `hugo.toml`
- Theme added as a git submodule in `themes/hugo-bearneo`
- Starter homepage content in `content/_index.md`
- First sample post in `content/posts/hello-world.md`

## Local development

If you have Hugo installed:

```bash
hugo server
```

If the theme submodule is not present after cloning:

```bash
git submodule update --init --recursive
```

## Next steps

- Replace the sample content with your own pages/posts
- Update `title` and `description` in `hugo.toml`
- Add a favicon and social links if you want them
