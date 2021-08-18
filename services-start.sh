#!/bin/bash
app_dir=$(pwd)
echo "app_dir: $app_dir"

echo -e "\033[33m Stop all services..."
sudo pm2 kill
#1) запуск всех сервисов:
#   pm2 start ecosystem.config.js --env production
#2) запуск конкретного сервиса
#   pm2 start ecosystem.config.js --env production --only "Tagger"
echo
echo -e "\033[32m Start all services..."
#sudo pm2 start ./env/ecosystem.config.js --env production --only "SerialService"
sudo pm2 start ./env/ecosystem.config.js --env production
echo -e "\033[32m Services have started!"
echo -e "\033[0m"

#запуск браузера
echo "Starting the Browser"
DISPLAY=:0 chromium-browser -kiosk http://localhost:4000
