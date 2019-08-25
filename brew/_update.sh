#!/bin/sh
brew bundle dump --force --file=$(cd $(dirname $0) && pwd)/Brewfile
