Each python environment caries it's own dependencies and requirements. Separating each environment by isolating them, will provide the flexibility to work on multiple projects without conflicts and contradictions.

> **[virtualenv](https://virtualenv.pypa.io/en/latest/)** when dealing with python 2.7 and lower. **[venv](https://docs.python.org/3/library/venv.html)** when dealing with python 3 and higher.

# Helpful pyenv plugin

_pyenv-virtualenv is a pyenv plugin that provides features to manage virtualenvs and conda environments for Python on UNIX-like systems._

The **pyenv-virtualenv** helps out to integrate the additional creation and activation of virtual environments. The plugin will deal with whether to use _virtualenv_ or _venv_ so you don't have to.

> https://github.com/pyenv/pyenv-virtualenv

# How many (system) python modules are installed?

`pip freeze | column`{{ execute }}

`pip freeze | wc -l`{{ execute }}

_Imagine having to install and uninstall these for every single project, every single time when changing between projects. Can you handle the impact and all the side effects it will cause?_ 🤔
