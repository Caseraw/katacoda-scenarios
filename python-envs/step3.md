Quick and easy installer to get you starting.

> https://github.com/pyenv/pyenv-installer

The installer comes with a predefined set of helpful plugins to get you started, for example:

- pyenv-doctor
- pyenv-installer
- pyenv-update
- pyenv-virtualenv
- pyenv-which-ext

# Prerequisites

Make sure to meet the requirements on the Operating System level.

> https://github.com/pyenv/pyenv/wiki/Common-build-problems#prerequisites

In this exercise we will be needing the Ubuntu prerequisites:

**Ensure system is updated**

`apt-get update && apt-get upgrade -y && apt-get autoremove && apt-get autoclean`{{ execute }}

_This can take a couple of minutes..._

**Required packages**

`apt-get install -y build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev python-openssl git`{{ execute }}

# Install pyenv with pyenv-installer

**Install**

`curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash`{{ execute }}

**Add to the user `.bashrc`**

`echo -e 'export PATH="$HOME/.pyenv/bin:$PATH"' >> ~/.bashrc`{{ execute }}

`echo -e 'eval "$(pyenv init -)"' >> ~/.bashrc`{{ execute }}

`echo -e 'eval "$(pyenv virtualenv-init -)"' >> ~/.bashrc`{{ execute }}

**Verify the user `.bashrc`**

`tail -3 ~/.bashrc`{{ execute }}

**Restart SHELL**

`exec $SHELL`{{ execute }}

