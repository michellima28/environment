#!/bin/bash

# script to install all default programs I use on Fedora
# it was tested on Fedora 31

# vim editor
#echo "updating dnf packages..."
#sudo dnf update
echo "installing vim-enhanced..."
sudo dnf install vim-enhanced

# python 3.5.9
echo "installing python 3.5.9..."
sudo yum install gcc sqlite-devel
cd /usr/src
sudo wget https://www.python.org/ftp/python/3.5.9/Python-3.5.9.tgz
sudo tar xzf Python-3.5.9.tgz
cd Python-3.5.9
./configure --enable-optimizations
sudo make altinstall
cd ..
sudo rm Python-3.5.9.tgz

# jupyterlab
echo "installing jupyterlab..."
pip3 install jupyterlab --user
jupyter serverextension enable --py jupyterlab

# visual studio code
echo "installing visual studio code..."
https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
sudo dnf check-update
sudo dnf install code

# update firefox
echo "updating firefox..."
sudo yum update firefox

# installing codecs
echo "installing multimedia codecs"
sudo dnf groupupdate multimedia
sudo dnf install compat-ffmpeg28

