# to install atom package
# require apm module to run

# load module list from ./list
apm_list=`cat ./list`

# IFSの設定
IFS_SAVE=$IFS
IFS=$'\n'

# install apm module
for i in ${apm_list[@]}
do
 apm install $i
done

IFS=$IFS_SAVE
