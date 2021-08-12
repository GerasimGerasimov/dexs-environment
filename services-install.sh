#!/bin/bash
cd /usr/DExS/services
echo "1) Install SerialPortsService"
sudo git clone https://github.com/GerasimGerasimov/SerialportsService.git
cd SerialportsService
sudo npm install
sudo npm run build
cd ..
echo ""
echo "2) Install SlotsService"
sudo git clone https://github.com/GerasimGerasimov/SlotsService.git
cd SlotsService
sudo npm install
sudo npm run build
cd ..
echo ""
echo "3) Tagger"
sudo git clone https://github.com/GerasimGerasimov/Tagger.git
cd Tagger
sudo npm install
sudo npm run build
cd ..
echo ""
echo "4) Static Files HTTP-Server"
sudo git clone https://github.com/GerasimGerasimov/StaticFilesServer.git
cd StaticFilesServer
sudo npm install
sudo npm run build
cd ..