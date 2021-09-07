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
#StaticFilesServer сразу на JS, его на надо компилировать
#sudo npm run build 
cd ..
echo ""
echo "5) event-logger-service"
sudo git clone https://github.com/GerasimGerasimov/event-logger-service.git
cd event-logger-service
sudo npm install
sudo npm run build
cd ..
echo ""
echo "6) events-log-reader"
sudo git clone https://github.com/GerasimGerasimov/events-log-reader.git
cd events-log-reader
sudo npm install
sudo npm run build
cd ..
echo ""
echo "7) dexop-system-services"
sudo git clone https://github.com/GerasimGerasimov/dexop-system-services.git
cd dexop-system-services/backend/
sudo npm install
sudo npm run build
cd ..
cd ..
