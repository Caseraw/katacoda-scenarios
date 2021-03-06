Create a virtual environment to isolate the python environment.

**List existing virtual environments**

`pyenv virtualenvs`{{ execute }}

> No output? In that case, there are no virtual environments that pyenv knows about.

**Create a virtual environment**

`pyenv virtualenv 3.9.2 MySpecialEnv_py_3.9.2`{{ execute }}

> Notice the location (path) of where the virtual environment is placed.

**Create a directory to house contents for the virtual environment**

`mkdir -p ~/PythonGarden/MySpecialEnv_py_3.9.2`{{ execute }}

**Change into the directory**

`cd ~/PythonGarden/MySpecialEnv_py_3.9.2`{{ execute }}

**Pin the virtual environment locally to the directory**

`pyenv local MySpecialEnv_py_3.9.2`{{ execute }}

> Notice the shell prompt changed into `(MySpecialEnv_py_3.9.2) $`. This means that the environment is activated. Remember this whenever you are working with virtual environments.

**List the contents of the directory**

`ls -la`{{ execute }}

`cat .python-version`{{ execute }}

> Notice a file is created in the current directory called `.python-version`. This contains a string value pointing to the name of the virtual environment `MySpecialEnv_py_3.9.2`. This file causes the activation of the environment when changing into the directory automatically. Changing away from the directory will cause to environment to be deactivated.

**List existing virtual environments and python versions, again**

`pyenv virtualenvs`{{ execute }}

`pyenv versions`{{ execute }}

`python --version`{{ execute }}

> Notice that all three outputs show which python is pointed to and in use in the activated virtual environment.
> If the `python --version` is incorrect and not according to the virtual environment. Restart the shell by running `exec $SHELL`.

**Deactivate an list again**

`cd ~`{{ execute }}

`pyenv virtualenvs`{{ execute }}

`pyenv versions`{{ execute }}

`python --version`{{ execute }}

> Notice that the environment is deactivated and the system python is in use.
