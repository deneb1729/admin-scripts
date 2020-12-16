#!/bin/bash
echo "**************************"
echo "Install dependencies"
echo "**************************"
sudo apt-get update && \
sudo apt-get install -y \
  apt-transport-https \
  wget \
  gnupg \
  python3 \
  python3-pip \
  python-dev \
  tree \
  libpq-dev

update-alternatives --install /usr/bin/python python /usr/bin/python3 1

echo "**************************"
echo "installing ansible"
echo "**************************"
pip3 install ansible

echo "**************************"
echo "installing npm"
echo "**************************"
sudo apt-get install npm -y
sudo npm install npm --global

echo "**************************"
echo "installing pip docker-compose"
echo "**************************"
pip3 install docker-compose

echo "**************************"
echo "downloading awx repo"
echo "**************************"
git clone https://github.com/ansible/awx.git
