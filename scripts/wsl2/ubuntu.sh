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

echo "Updating package managers..."
sudo apt update

echo "Installing additional packages..."
sudo apt install git -y

echo "Configuring nodejs...what major version of nodejs (e.g. 14)?"
read nodejs
curl -sL "https://deb.nodesource.com/setup_${nodejs}.x" | sudo -E bash -
sudo apt install nodejs -y

echo "Configuring misc packages..."
sudo apt install npm -y
sudo apt install awscli -y
sudo apt install jq -y
sudo apt install unzip -y

echo "Configuring terraform..."
TF_LATEST_VERSION=`curl -sk https://checkpoint-api.hashicorp.com/v1/check/terraform | jq -r -M '.current_version'`
wget https://releases.hashicorp.com/terraform/${TF_LATEST_VERSION}/terraform_${TF_LATEST_VERSION}_linux_amd64.zip
unzip -f terraform_${TF_LATEST_VERSION}_linux_amd64.zip
sudo mv -f terraform /usr/local/bin/
rm -f terraform_${TF_LATEST_VERSION}_linux_amd64.zip

echo "Configuring global npm packages..."
sudo npm install -g @vue/cli
sudo npm install -g @aws-amplify/cli
sudo npm install -g serverless
