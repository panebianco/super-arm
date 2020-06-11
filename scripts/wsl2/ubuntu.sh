#!/bin/bash

echo "Configuring git...what is your user.email address..."
read email
git config --global user.email $email
echo "Configuring git...what is your user.name..."
read name
git config --global user.name $name

sudo apt update

sudo apt install git -y

# Install latest version of node (as of 2020-10-06)
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt install nodejs -y

sudo apt install npm -y

sudo apt install awscli -y

sudo apt install jq -y
