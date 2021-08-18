#!/bin/bash
echo "prepare app to start"
app_root_dir="/usr/DExS/"

#create environment dir
app_env="${app_root_dir}env"
sudo mkdir -p $app_env

#copy env to created dir
cp -r ecosystem.config.js $app_env
cp -r services-start.sh $app_root_dir

