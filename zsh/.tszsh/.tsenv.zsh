export PYENV_ROOT=${HOME}/.pyenv
if [ -d "${PYENV_ROOT}" ]; then
	export PATH=${PYENV_ROOT}/bin:$PATH
	eval "$(pyenv init -)"
	eval "$(pyenv virtualenv-init -)"
fi

if [[ -s $HOME/.nvm/nvm.sh ]] ; then source $HOME/.nvm/nvm.sh ; fi

export GOPATH=$HOME/.go
export PATH=${GOPATH}/bin:$PATH

# export CLICOLOR=1
# export LSCOLORS=exfxcxdxbxegedabagacad

export local=~/Vagrant/local
export WORK=~/Desktop/Project
