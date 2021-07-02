#!/usr/bin/bash

echo "Please use on Ubuntu-like distoributions";
echo "Install development enviroment by @uchan-nos";

echo "Apt update and Install git";
sudo apt -y update;
sudo apt -y install git;

echo "Clone git repository to $HOME/osbook";
cd ~/;
git clone https://github.com/uchan-nos/mikanos-build.git osbook;

echo "Install ansible and do command \"ansible-playbook\"";
sudo apt install ansible;
cd ~/osbook/devenv;
ansible-playbook -K -i ansible_inventory ansible_provision.yml;

echo "Confirm iasl";
iasl -v;

echo "Installed.";
