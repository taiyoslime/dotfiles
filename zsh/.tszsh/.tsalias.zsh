alias grep="ag"

alias open="open ."
alias atom="atom ."
alias v="vagrant"
alias :q="quit||exit"
alias q="quit||exit"
# typo
alias oepn="open"
alias opne="open"

alias ...="cd ../.."

# related 'extract' function^
alias -s {gz,tgz,zip,lzh,bz2,tbz,Z,tar,arj,xz}=extract
alias -s exe="wine"

# youtube-dl utility
alias ydl="youtube-dl -f bestvideo+bestaudio --recode-video mp4 -o '~/Desktop/%(title)s.%(ext)s'"
alias ydl-audio="youtube-dl -f 'bestaudio[ext!=webm]' --audio-quality 0 -o '~/Desktop/%(title)s.%(ext)s'"
alias ydl-list="youtube-dl -F"

# thefuck configuration
alias fuck='eval "$(thefuck --alias)"'
alias shit='eval "$(thefuck --alias)"'

# stack (haskell dev platform) utility
alias ghc="stack ghc"
alias runghc="stack runghc"
alias ghci="stack ghci"

alias g++="g++-8"
alias gcc="gcc-8"

# CTF
alias objdump="gobjdump -M intel"
alias disasm="objdump -d"
