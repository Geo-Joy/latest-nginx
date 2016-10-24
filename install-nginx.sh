#!/bin/bash

sudo apt-get update

echo "Getting NGINX Sign Keys"
sudo curl http://nginx.org/keys/nginx_signing.key | apt-key add -

sudo echo -e "deb http://nginx.org/packages/mainline/ubuntu/ `lsb_release -cs` nginx\ndeb-src http://nginx.org/packages/mainline/ubuntu/ `lsb_release -cs` nginx" > /etc/apt/sources.list.d/nginx.list

sudo apt-get install nginx

sudo nginx -version
