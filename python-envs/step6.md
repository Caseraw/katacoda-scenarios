It's time to start working on a simple project.

**Create the project directory MyProject_01**

`mkdir -p ~/PythonGarden/MySpecialEnv_py_3.9.2/MyProject_01`{{ execute }}

**Change into the project directory**

`cd ~/PythonGarden/MySpecialEnv_py_3.9.2/MyProject_01`{{ execute }}

> Notice that the environment is activated after changing into it.

**Verify your working environment**

`pyenv virtualenvs`{{ execute }}

`pyenv versions`{{ execute }}

`python --version`{{ execute }}

`pip --version`{{ execute }}

**Upgrade pip and install setup-tools**

`pip install --upgrade pip setuptools`{{ execute }}

**Hello world example**

`git clone https://github.com/dbarnett/python-helloworld.git .`{{ execute }}

`python helloworld.py`{{ execute }}
