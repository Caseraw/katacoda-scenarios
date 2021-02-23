Create a virtual environment to isolate the python environment.

**List existing virtual environments**

`pyenv virtualenvs`{{ execute }}

_No output? In that case, there are no virtual environments that pyenv knows about._

**Create a virtual environments**

`pyenv virtualenv 3.9.2 MySpecialEnv_py_3.9.2`{{ execute }}

**Create a directory to house contents for virtual environment**

`mkdir -p ~/PythonGarden/MySpecialEnv_py_3.9.2`{{ execute }}

**Change to the directory**

`cd ~/PythonGarden/MySpecialEnv_py_3.9.2`{{ execute }}

**Pin the virtual environment to the directory**

`pyenv local MySpecialEnv_py_3.9.2`{{ execute }}

_Notice the shell prompt change into `(MySpecialEnv_py_3.9.2) $`. This means that the environment is activated. Remember this whenever you are working with virtual environments._

_Notice a file is created in the current directory called `.python-version`. This contains a string value pointing to the name of the virtual environment `MySpecialEnv_py_3.9.2`. This file causes the activation of the environment when changing into the directory automatically. Changing away from the directory will cause to environment to be deactivated._

**List existing virtual environments, again**

`pyenv virtualenvs`{{ execute }}

# Create a project

It's time to start working on a project.

**Create the project directory**

`mkdir -p ~/PythonGarden/MySpecialEnv_py_3.9.2/MyProject_01`{{ execute }}

**Change to the project directory**

`cd ~/PythonGarden/MySpecialEnv_py_3.9.2/MyProject_01`{{ execute }}
