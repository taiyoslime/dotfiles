## Overview

Some of my dotfiles using for dev.

## Usage

#### Download & install
Clone this repository ( don't forget to specify ` --recursive` option or run `git submodule init && git submodule update` to set up submodules ) and then execute `install.sh`.
```
git clone --recursive https://github.com/taiyoslime/dotfiles && cd dotfiles
chmod +x ./install.sh && ./install.sh
```
#### Update
Just run `update.sh`.
```
chmod +x ./update.sh && ./update.sh
```

## TODO
- [ ] Add install.sh
  - [x] Write scripts to setup homebrew
  - [ ] Write scripts to place and link each files
    - especially language processors that conflict with what has already pre-installed in Mac.
- [x] Add update.sh
- [ ] Add more dotfiles existing my computer
  - [x] Vim
  - [x] npm
  - [ ] Atom
  - [ ] rbenv
  - [ ] pyenv
  - [x] tmux
  - [ ] ssh
  - [ ] ...
