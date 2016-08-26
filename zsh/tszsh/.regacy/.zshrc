#Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

local=~/Vagrant/local

export PYENV_ROOT=${HOME}/.pyenv
if [ -d "${PYENV_ROOT}" ]; then
	    export PATH=${PYENV_ROOT}/bin:$PATH
	        eval "$(pyenv init -)"
		    eval "$(pyenv virtualenv-init -)"
fi


function cdp {
	local dir="$( ls -1d */ | peco )"
	if [ ! -z "$dir" ] ; then
		cd "$dir"
	fi
}


function agvim () {
	vim $(ag $@ | peco --query "$LBUFFER" | awk -F : '{print "-c " $2 " " $1}')
}


#危険すぎるw
#function del()
#{
#	if [ ! $1 ]; then
#
#	else
#		rm -r -f $1
#	fi
#
#}

function gp(){ git push origin master }
function gc(){ git commit -a -m $1 }
function gs(){ git status }
function g(){
	git add -A
	if [ ! $1 ]; then
		git commit -a -m 'add and change files(no comment)'
	else
		git commit -a -m $1
	fi
	echo 'Push to remote...'
	git push origin master
}


function a()
{
	g++ $1 -Wall -O2
	if [ $? -eq 0 ]; then
		echo -e '\e[32m [Build Success] \e[m'
		./a.out
	fi
}

export CLICOLOR=1
export LSCOLORS=exfxcxdxbxegedabagacad

function joi(){
	#rm ./joi-$1
	g++ q$1.cpp -Wall -O2 -o joi-$1.out

	if [ $? -eq 0 ]; then
                 echo -e '\e[32m [Build Success] \e[m'
	          ./joi-$1.out
	fi

}
function run(){
	if [ $# -eq 1 ]; then
		zsh run.sh $1
	else
		echo 問題番号を指定して！
	fi
}

#terminalのバーのタイトルを変更
function title()
{

if [ "$#" -eq 0 ];then
	  echo "usage tl name "
else
	    echo -en "\033];$1\007"
    fi
}

function localope () {
    local dir=`pwd`
    cd $local
    vagrant "${1:-status}"
    cd $dir
}
function vu(){
	tmux
	cd $local
	vagrant up &&  vagrant ssh
}

alias open="open ."
alias atom="atom ."
alias v="vagrant"
alias dict="open dict://"
alias :q="quit||exit"

function fshow(){
	defaults write com.apple.finder AppleShowAllFiles TRUE && killall Finder
}
function fhide(){
	defaults write com.apple.finder AppleShowAllFiles FALSE && killall Finder
}



function mk(){
	if [ "${1##*.}" = "cpp" ]; then
		echo "#include <iostream>\nusing namespace std;\nint main(){\n\n}">$1
	else
		:>$1
	fi
}

# ps コマンドのプロセス名補完
zstyle ':completion:*:processes' command 'ps x -o pid,s,args'
