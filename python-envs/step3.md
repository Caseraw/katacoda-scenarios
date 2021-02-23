# pyenv installer

Quick and easy installer to get you starting.

> https://github.com/pyenv/pyenv-installer

## Perquisites

Make sure to meet the requirements as stated on: https://github.com/pyenv/pyenv/wiki/Common-build-problems#prerequisites

For this exercise we will be needing the Ubuntu prerequisites:

`apt-get update`{{ execute }}

`apt-get upgrade -y`{{ execute }}

`apt-get install -y build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev python-openssl git`{{ execute }}

## Install pyenv with pyenv-installer

**Install**

`curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash`{{ execute }}

**Add to your `.bashrc`**

`
cat <<EOT >> ~/.bashrc

export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

EOT
`{{ execute }}

`vi ~/.bashrc`{{ execute }}

**Restart SHELL**

`exec $SHELL`{{ execute }}

# Other plugins

The installer comes with a predefined set of helpful plugins to get you started, for example:

- pyenv-doctor
- pyenv-installer
- pyenv-update
- pyenv-virtualenv
- pyenv-which-ext