Explore the pyenv command to see what it provides.

**Overview of the help section**

`pyenv --help`{{ execute }}

**List all current python versions**

`pyenv versions`{{ execute }}

> Notice that only the system python is available.

**Python executable path**

`pyenv which python`{{ execute }}

**List the current active python version**

`python --version`{{ execute }}

> Notice what version the system python is on.

# Install a python version

**Consult the help section for the install command**

`pyenv install --help`{{ execute }}

**List all available python versions**

`pyenv install -l | column`{{ execute }}

**Install version 3.9.2**

`pyenv install 3.9.2`{{ execute }}

> This can take a significant amount of minutes...

**List all current python versions**

`pyenv versions`{{ execute }}

> Notice the additional installed version below the system python.

**List the current active python version**

`python --version`{{ execute }}

> Notice that the system python has not changed yet.
