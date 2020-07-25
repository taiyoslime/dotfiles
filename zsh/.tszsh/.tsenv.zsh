export PYENV_ROOT=${HOME}/.pyenv

export PYENV_VIRTUALENV_DISABLE_PROMPT=1

if [ -d "${PYENV_ROOT}" ]; then
	export PATH=${PYENV_ROOT}/bin:$PATH
	eval "$(pyenv init -)"
	eval "$(pyenv virtualenv-init -)"
fi

export PATH=${HOME}/.rbenv/bin:$PATH
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi


if [[ -s $HOME/.nvm/nvm.sh ]] ; then source $HOME/.nvm/nvm.sh ; fi

export GOPATH=$HOME/.go
export PATH=${GOPATH}/bin:$PATH

# disable homebrew's auto-update
export HOMEBREW_NO_AUTO_UPDATE=1

# export CLICOLOR=1
# export LSCOLORS=exfxcxdxbxegedabagacad

export VM=~/Vagrant/ubuntu-18.04
export WORK=~/Desktop/Project


export PATH="$HOME/.bin:$PATH"
export PATH="$WORK/dotfiles/applescript:$PATH"
export PATH="$HOME/.yarn/bin:$PATH"
export PATH="/usr/local/Cellar/gcc/9.2.0/bin:$PATH"

export PATH="/usr/local/opt/ncurses/bin:$PATH"

export PATH="$HOME/.nodebrew/current/bin:$PATH"
export PATH="/usr/local/opt/binutils/bin:$PATH"