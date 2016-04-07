# ./ 以下の全てのinstall.shを実行
find . -name "_install.sh" -exec echo "running : {} ... " \; -exec sh {} \;
echo "done"
