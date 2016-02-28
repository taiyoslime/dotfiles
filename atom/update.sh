# list 更新
ls ~/.atom/packages | ag -v .md>| $(cd $(dirname $0) && pwd)/list
