#!/bin/bash

# script to install all default programs I use on Ubuntu
# it was tested on Ubuntu 19.10 and 20.04

# vim editor
echo "installing vim editor..."
sudo apt install vim

# pip installer
echo "installing pip installer..."
sudo apt install python-pip

# jupyter lab
echo "installing jupyer lab..."
sudo pip install jupyterlab

# java
echo "installing java..."
sudo apt-get update
sudo apt-get install default-jre

# py for j library
echo "installing py4j..."
pip install py4j

# visual studio code
echo "installing visual studio code..."
sudo apt install curl
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /usr/share/keyrings/
sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get install apt-transport-https
sudo apt-get update
sudo apt-get install code # or code-insiders

# spotify
echo "installing spotify..."
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt install snapd
sudo snap install spotify

# wps office
echo "installing wps office..."
sudo apt-get install snapd
sudo snap install wps-office

# musescore
echo "installing musescore..."
sudo add-apt-repository ppa:mscore-ubuntu/mscore3-stable
sudo apt install musescore3

# sublime text
echo "installing sublime text..."
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text

# python 3.5.9
echo "installing python 3.5.9..."
sudo apt-get install build-essential checkinstall
sudo apt-get install libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev
cd /usr/src
sudo wget https://www.python.org/ftp/python/3.5.9/Python-3.5.9.tgz
sudo tar xzf Python-3.5.9.tgz
cd Python-3.5.9
sudo ./configure --enable-optimizations
sudo make altinstall
sudo apt-get install python3-pip
pip3 install ipykernel
python3 -m ipykernel install --user

# dbeaver
echo "installing dbeaver..."
sudo snap install dbeaver-ce

# hplip
# this is a software to enable using hp printers on linux
# useful links:
# https://www.vivaolinux.com.br/artigo/Instalando-a-impressora-HP-D1460-(serie-D1400)-no-Linux
# https://developers.hp.com/hp-linux-imaging-and-printing/install/install/index
echo "installing hplip..."
sh hplip-3.20.2.run

# playonlinux
#echo "installing playonlinux..."
#wget -q "http://deb.playonlinux.com/public.gpg" -O- | sudo apt-key add -
#sudo sh -c 'echo "deb http://deb.playonlinux.com/ $(lsb_release -sc) main" >> /etc/apt/sources.list.d/playonlinux.list'
#sudo apt-get update
#sudo apt-get install playonlinux
#sudo apt-get install winbind

# multimedia codecs
echo "installing multimedia codecs..."
sudo apt install ubuntu-restricted-extras

# retroarch
echo "installing retroarch..."
sudo snap install retroarch
