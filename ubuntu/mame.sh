# mame (multiple arcade machine emulator)
# link:
# https://sempreupdate.com.br/como-instalar-o-mame-multiple-arcade-machine-emulator-no-ubuntu-linux-mint-e-derivados/

sudo add-apt-repository ppa:c.falco/mame -y
sudo apt-get update
sudo apt-get install mame

# after installation, please follow the steps below to fix some common errors:
# 
# 1. To run games in full screen mode: 
# open the configuration file in folder ~home/$USER/.mame/mame.ini
# go to CORE RENDER OPTIONS and change keepaspect from 1 to 0
# video with instructions: https://www.youtube.com/watch?v=_ji2qh5V3rg&t=338s
#
# 2. Fix "missing dl-1425.bin file and qsound_hle"
# extract the folder named qsound.zip, cut and paste it into your default roms folder
# rename the folder to "qsound_hle"
# rename file named D6CF5EF5 to "dl-1425.bin" 

