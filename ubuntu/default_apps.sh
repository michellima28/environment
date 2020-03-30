# script to install all default programs I use on Ubuntu
# it was tested on Ubuntu 19.01

# vim editor 
sudo apt install vim

# pip3 installer
sudo apt install python3-pip

# jupyter
sudo snap install jupyter

# mongodb
sudo apt update
sudo apt install mongodb

# java
sudo apt-get update
sudo apt-get install default-jre

# scala
sudo apt-get install scala

# py for j library
pip3 install py4j

# visual studio code
sudo apt install curl
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /usr/share/keyrings/
sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get install apt-transport-https
sudo apt-get update
sudo apt-get install code # or code-insiders

# spotify
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt install snapd
sudo snap install spotify

# git
sudo apt update
sudo apt install git

# wps office
sudo apt-get install snapd
sudo snap install wps-office

# musescore
sudo add-apt-repository ppa:mscore-ubuntu/mscore3-stable
sudo apt install musescore3
