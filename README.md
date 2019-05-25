[![license](https://img.shields.io/github/license/peaceiris/actions-pipenv.svg)](https://github.com/peaceiris/actions-pipenv/blob/master/LICENSE)
[![release](https://img.shields.io/github/release/peaceiris/actions-pipenv.svg)](https://github.com/peaceiris/actions-pipenv/releases/latest)
[![GitHub release date](https://img.shields.io/github/release-date/peaceiris/actions-pipenv.svg)](https://github.com/peaceiris/actions-pipenv/releases)

<img width="400" alt="GitHub Actions for pipenv - Python" src="./images/ogp.svg">



## GitHub Actions for pipenv - Python

- [pypa/pipenv: Python Development Workflow for Humans.](https://github.com/pypa/pipenv)



## Getting started

| Branch | Base image |
|---|---|
| 3.6 | `python:3.6` |
| 3.7 | `python:3.7` |

### Create `main.workflow`

```hcl
workflow "Python workflow" {
  on = "push"
  resolves = ["test"]
}

action "pipenv-sync" {
  uses = "peaceiris/actions-pipenv@3.6"
  args = ["sync"]
}

action "test" {
  needs = "pipenv-sync"
  uses = "peaceiris/actions-pipenv@3.6"
  args = ["run", "test"]
}
```



## Examples

### MkDocs

- [GitHub Actions for deploying to GitHub Pages with Static Site Generators](https://github.com/peaceiris/actions-gh-pages)
- [main.workflow - peaceiris/mkdocs-material-boilerplate](https://github.com/peaceiris/mkdocs-material-boilerplate/blob/master/.github/main.workflow)



## License

[MIT License - peaceiris/actions-pipenv]

[MIT License - peaceiris/actions-pipenv]: https://github.com/peaceiris/actions-pipenv/blob/master/LICENSE



## About the author

- [peaceiris's homepage](https://peaceiris.com/)
