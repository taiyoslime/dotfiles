# grep is too slow lol
alias grep="ag"

alias open="open ."
alias atom="atom ."
alias v="vagrant"
alias dict="open dict://"
alias :q="quit||exit"
alias q="quit||exit"
# typo
alias oepn="open"
alias opne="open"

# to open URL
alias twitter="open http://twitter.com"
alias github="open http://github.com"

alias ...="cd ../.."

# related 'extract' function
alias -s {gz,tgz,zip,lzh,bz2,tbz,Z,tar,arj,xz}=extract

# youtube-dl utility
alias ydl="youtube-dl -f bestvideo+bestaudio --recode-video mp4 -o '~/Desktop/%(title)s.%(ext)s'"
alias ydl-audio="youtube-dl -f 'bestaudio[ext!=webm]' --audio-quality 0 -o '~/Desktop/%(title)s.%(ext)s'"
alias ydl-list="youtube-dl -F"

# git utility
alias gp="git push -u origin master"
alias gc="git commit -a -m"
alias gs="git status -s" 

# thefuck configuration
alias fuck='eval "$(thefuck --alias)"'
alias shit='eval "$(thefuck --alias)"'

# stack (haskell dev platform) utility
alias ghc="stack ghc"
alias runghc="stack runghc"
alias ghci="stack ghci"
