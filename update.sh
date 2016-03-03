# ./ 以下の全てのupdate.shを実行
find . -name "_update.sh" -exec echo "running : {} ... " \; -exec sh {} \;
echo done
