FROM python:3.6

LABEL "com.github.actions.name"="pipenv - Python"
LABEL "com.github.actions.description"="GitHub Actions for Python project with pipenv"
LABEL "com.github.actions.icon"="package"
LABEL "com.github.actions.color"="blue"

LABEL "repository"="https://github.com/peaceiris/actions-pipenv"
LABEL "homepage"="https://github.com/peaceiris/actions-pipenv"
LABEL "maintainer"="peaceiris"

RUN pip install --upgrade pip && \
    pip install pipenv

ENV PIPENV_VENV_IN_PROJECT=true

ENTRYPOINT [ "/usr/local/bin/pipenv" ]
