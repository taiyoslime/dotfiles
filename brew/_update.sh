# list を更新する
brew list >| $(cd $(dirname $0) && pwd)/list
