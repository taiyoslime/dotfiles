# must run this script after run ../brew/install.sh

sudo ln -sf /usr/local/lib/package.json ./package.json

# install modules using package.json
sudo npm install -g
