# Isolate environments

Each python environment caries it's own dependencies and requirements. Separating each environment by isolating them, will provide the flexibility to work on multiple projects without conflicts and contradictions.

Use virtualenv or venv to isolate python environments.

- **Python 2.7 and lower**
    - https://virtualenv.pypa.io/en/latest/
- **Python 3 and higher**
    - https://docs.python.org/3/library/venv.html

## pyenv integrated virtualenv plugin

_pyenv-virtualenv is a pyenv plugin that provides features to manage virtualenvs and conda environments for Python on UNIX-like systems._

> https://github.com/pyenv/pyenv-virtualenv

# How many (system) python modules are installed?

`pip freeze`{{ execute }}

`pip freeze | wc -l`{{ execute }}
