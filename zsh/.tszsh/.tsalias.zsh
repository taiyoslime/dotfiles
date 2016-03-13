# grep is too slow lol
alias grep="ag"

alias open="open ."
alias atom="atom ."
alias v="vagrant"
alias dict="open dict://"
alias :q="quit||exit"
alias q="quit||exit"

alias ...="cd ../.."

# related 'extract' function
alias -s {gz,tgz,zip,lzh,bz2,tbz,Z,tar,arj,xz}=extract

# youtube-dl utility
alias ydl="youtube-dl -f 'bestvideo[ext!=webm]'"
alias ydl-audio="youtube-dl -f 'bestaudio[ext!=webm]' --audio-quality 0"
alias ydl-list="youtube-dl -F"

# git utility
alias gp="git push -u origin master"
alias gc="git commit -a -m"
alias gs="git status"
