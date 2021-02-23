# Simple Python Version Management

_pyenv lets you easily switch between multiple versions of Python. It's simple, unobtrusive, and follows the UNIX tradition of single-purpose tools that do one thing well._

> https://github.com/pyenv/pyenv

# What it does!

- Set a global python version.
- Set a local python version, per project.
- Quickly change and switch versions.

# What it doesn't do!

- Depend on the system Python.
- Entangled installation.
- Manage virtualenv.

# What is the current system python version?

`which python`{{ execute }}

`python --version`{{ execute }}

_Imagine what will happen to the system and all that depends on the system python, if you'd changed the system python version every single time for every single project._ 🤔
