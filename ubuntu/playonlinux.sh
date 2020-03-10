# This is a tool to run microsoft programs on linux
wget -q "http://deb.playonlinux.com/public.gpg" -O- | sudo apt-key add -
sudo sh -c 'echo "deb http://deb.playonlinux.com/ $(lsb_release -sc) main" >> /etc/apt/sources.list.d/playonlinux.list'
sudo apt-get update
sudo apt-get install playonlinux
sudo apt-get install winbind

