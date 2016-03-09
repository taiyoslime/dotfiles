# load module list from ./list
brew_list=`cat ./list`

# IFSの設定
IFS_SAVE=$IFS
IFS=$'\n'

# モジュールをインストール
for i in ${brew_list[@]}
do
 brew link $i
done

# 後始末(必要なのか)
IFS=$IFS_SAVE
