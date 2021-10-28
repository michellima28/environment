#!/bin/bash

# script to install all default programs I use on Ubuntu
# it was tested on Ubuntu 19.10 and 20.04

# vim editor
echo "installing vim editor..."
sudo apt install vim

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
sudo snap install wps-office-all-lang-no-internet

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

# jupyter lab
echo "installing jupyer lab..."
sudo pip3 install jupyterlab

# dbeaver
echo "installing dbeaver..."
sudo snap install dbeaver-ce

# hplip
# this is a software to enable using hp printers on linux
# useful links:
# https://support.system76.com/articles/add-a-printer-pop/
# to configure your printer, type "hp-setup" in your terminal
echo "installing hplip..."
sudo apt install python3-pyqt5

# wine
echo "installing wine..."
sudo dpkg --add-architecture i386
wget -qO - https://dl.winehq.org/wine-builds/winehq.key | sudo apt-key add -
sudo apt-add-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ bionic main'
sudo add-apt-repository ppa:cybermax-dexter/sdl2-backport
sudo apt update
sudo apt install --install-recommends winehq-stable

# playonlinux
#echo "installing playonlinux..."
#wget -q "http://deb.playonlinux.com/public.gpg" -O- | sudo apt-key add -
#sudo sh -c 'echo "deb http://deb.playonlinux.com/ $(lsb_release -sc) main" >> /etc/apt/sources.list.d/playonlinux.list'
#sudo apt-get update
#sudo apt-get install playonlinux
#sudo apt-get install winbind
#sudo apt-get install xterm

# poker stars app
echo "downloading poker stars installation file..."
cd /home/$USER 
wget -c http://www.pokerstars.com/PokerStarsInstall.exe
cd /home/$USER/github/environment/pop-os/

# multimedia codecs
echo "installing multimedia codecs..."
sudo apt install ubuntu-restricted-extras

# retroarch
echo "installing retroarch..."
sudo snap install retroarch

# zoom
echo "installing zoom..."
wget https://zoom.us/client/latest/zoom_amd64.deb
sudo dpkg -i zoom_amd64.deb
sudo rm -rf zoom_amd64.deb

# chrome
echo "installing chrome..."
cd /home/$USER/
https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb
rm -rf google-chrome-stable_current_amd64.deb
cd /home/$USER/github/environment/pop-os/

# gnome-tweaks
echo "installing gnome-tweaks..."
sudo apt-get install gnome-tweaks

# hypnotix
echo "installing hypnotix..."
cd /home/$USER
wget https://github.com/linuxmint/hypnotix/releases/download/1.1/hypnotix_1.1_all.deb
wget http://lug.mtu.edu/ubuntu/pool/universe/i/imdbpy/python3-imdbpy_6.8-2_all.deb
sudo apt install ./python3-imdbpy_6.8-2_all.deb
sudo apt install ./hypnotix_1.1_all.deb
sudo rm -rf python3-imdbpy_6.8-2_all.deb
sudo rm -rf hypnotix_1.1_all.deb
cd /home/$USER/github/environment/pop-os/

# pika backup
echo "installing pika backup..."
flatpak install --user https://flathub.org/repo/appstream/org.gnome.World.PikaBackup.flatpakref

# flameshot
echo "installing flameshot..."
sudo snap install flameshot

echo "the script has finished. your apps has been installed!"

# youtube-dl
echo "installing youtube-dl - youtube videos downloader"
sudo apt install ffmpeg
sudo snap install youtube-dl
