#!/bin/bash
echo "1) Install SerialPortsService"
sudo git clone https://github.com/GerasimGerasimov/SerialportsService.git
cd SerialportsService
sudo npm install
sudo npm run build