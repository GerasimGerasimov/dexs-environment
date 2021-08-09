#!/bin/bash
echo "1) Install SerialPortsService"
cd /usr/DExS/services
sudo git clone https://github.com/GerasimGerasimov/SerialportsService.git
cd SerialportsService
sudo npm install
sudo npm run build