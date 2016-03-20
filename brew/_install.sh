# TODO
# 言語処理系でMacにデフォルトで入ってるやつのインストール後の　処理


# Install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap homebrew/versions
brew update
brew upgrade

# load module list from ./list
brew_list=`cat ./list`
brew_cask_list=`cat ./casklist`

# IFSの設定
IFS_SAVE=$IFS
IFS=$'\n'

# モジュールをインストール
for i in ${brew_list[@]}
do
 brew install $i
done

for i in ${brew_cask_list[@]}
do
 brew cask install $i
done


# 後始末(必要なのか)
IFS=$IFS_SAVE
