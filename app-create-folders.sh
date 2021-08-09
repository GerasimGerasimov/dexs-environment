#!/bin/bash
echo "create app folders"
app_root_dir="/usr/DExS/"
app_services="${app_root_dir}services"
app_frontend="${app_root_dir}frontend"
sudo mkdir -p $app_root_dir
sudo mkdir -p $app_services
sudo mkdir -p $app_frontend