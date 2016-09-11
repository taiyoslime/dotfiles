#!/bin/sh

# TODO
# 言語処理系でMacにデフォルトで入ってるやつのインストール後の　処理

# Install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap homebrew/bundle
brew bundle install --file=$(cd $(dirname $0) && pwd)/Brewfile
