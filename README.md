## Overview

Some of my dotfiles and configuration files using for dev.

## Usage

#### Download & install
Clone this repository ( don't forget to specify ` --recursive` option, or execute `git submodule init && git submodule update` additionally to set up submodules ) and then execute `install.sh`.
```
git clone --recursive https://github.com/taiyoslime/dotfiles
cd dotfiles
chmod +x ./install.sh && ./install.sh
```
#### Update
Just run `update.sh`.
```
chmod +x ./update.sh && ./update.sh
```

##lists
- ag
- Atom
- editorconfig
- Homebrew
- git
- Haroopad
- htop
- Karabinar
- npm
- tmux
- Vim
- zsh

## TODO
- [ ] Add install.sh
  - [x] Write scripts to setup homebrew
  - [ ] Write scripts to place and link each files
    - especially language processors that conflict with what has already pre-installed in Mac.
- [x] Add update.sh
