#!/bin/bash
#echo "install mc"
#sudo apt-get install mc

starting_dir=$(pwd)
#
echo "1. Install latest Node.JS"
node_download_dir="/home/pi/Downloads/node-download"
node_download_url="https://nodejs.org/dist/v14.17.4/node-v14.17.4-linux-armv7l.tar.xz"
sudo mkdir -p $node_download_dir
cd $node_download_dir
mydir=$(pwd)
echo $mydir
wget $node_download_url
node_dist_name=${node_download_url##*/}  # retain the part after the last slash node-v14.17.4-linux-armv7l.tar.xz
echo Extract Node.JS to $node_dist_name
tar -xvf $node_dist_name
node_dist_dir_name=${node_dist_name%.*.*} # cut last two dots node-v14.17.4-linux-x64 - tar.xz
echo install Node.JS $node_dist_dir_name to system
sudo cp -r $node_dist_dir_name/{bin,include,lib,share} /usr/
echo Node.JS Version: $(node --version) installed
cd ..
rm -rf $node_download_dir/

#
echo "2. Install latest TypeScript"
sudo npm install -g typescript
echo TypeScript $(tsc -v) installed

#
echo "3. Install latest PM2 demonizer"
sudo npm install -g pm2
echo PM2 Version: $(pm2 --version) installed

#
echo "4. Make all *.sh files executable"
cd $starting_dir
sudo chmod +x ./app-create-folders.sh
sudo chmod +x ./services-install.sh
sudo chmod +x ./services-prepare.sh
sudo chmod +x ./services-start.sh

#
echo "5. Autostart setings"
cp -r autostart /etc/xdg/lxsession/LXDE-pi/

#
echo "Install services"
./app-create-folders.sh
./services-install.sh
./services-prepare.sh

echo "DONE!"
