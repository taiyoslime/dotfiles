# ./ 以下の全てのupdate.shを実行
find . -name "_install.sh" -exec echo "running : {} ... " \; -exec sh {} \;
echo "done"
