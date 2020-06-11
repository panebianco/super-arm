#!/bin/bash

echo "Configuring environment..."

echo "Configuring git...what is your user.email address?"
read email
git config --global user.email $email
echo "Configuring git...what is your user.name?"
read name
git config --global user.name $name

echo "Creating ssh key pair..."
ssh-keygen -t rsa -b 4096 -f ~/.ssh/id_rsa -q -N ""
echo "Public ssh key output below."
cat ~/.ssh/id_rsa.pub

echo "Updating package manages..."
sudo apt update

echo "Installing additional packages..."
sudo apt install git -y

echo "Configure nodejs...what major version of nodejs (e.g. 14)?"
read nodejs
curl -sL "https://deb.nodesource.com/setup_${nodejs}.x" | sudo -E bash -
sudo apt install nodejs -y

sudo apt install npm -y
sudo apt install awscli -y
sudo apt install jq -y
