#!/bin/bash

# script to install all default programs I use on Fedora
# it was tested on Fedora 31

# vim editor
sudo dnf update
echo "updating dnf packages..."
sudo dnf install vim-enhanced
echo "installing vim-enhanced..."
