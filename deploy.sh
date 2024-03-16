#!/usr/bin/env bash
# Look for updates of available software packages && install nodejs and npm
sudo apt update && sudo apt install nodejs npm
# Install pm2 which is a production process manager for Node.js with a built-in load balancer.
sudo npm install -g pm2
# Stop the application with the process name 'simple_app' running currently
pm2 stop simple_app
# Change directory into folder where application is downloaded
cd SimpleApplication/
# Install dependencies into the application
npm install
# Start the application with the process name 'simple_app' using pm2
pm2 start ./bin/www --name simple_app