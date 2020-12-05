#!/bin/bash

# not tested! probably better off manually copy pasting bits at a time

copy_from_machine=${1:-192.168.1.42}
copy_from_username=${2:-zazkia}



# home dir
cd ~

# setup git
sudo apt-get install git

# generate ssh keys for githun or copy from other machine
rsync -avr "$copy_from_username@$copy_from_machine:/home/$copy_from_username/.ssh ."


#################
#  Keepass      #
#################
sudo apt-get install keepassx
git clone git@github.com:shiltemann/keepass

# copy key file
rsync -avr "$copy_from_username@$copy_from_machine:/home/$copy_from_username/keepass/keepass.key ~/keepass/"


##################
#   Dotfiles     #
##################
sudo apt-get install stow
git clone --recursive git@github.com:shiltemann/dotfiles
cd dotfiles

# terminal
sudo apt-get install terminator tmux

# vim
sudo apt-get install vim-gtk vim-pathogen
stow vim

# zsh
sudo apt-get install zsh
mv .bashrc .bashrc_bak
stow bash
stow zsh
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
stow dotfiles/zprezto
cp prompt_zazzie_setup .zprezto/modules/prompt/functions/
stow zprezto

cd ~

################
#  OTHER       #
################
sudo apt-get install build-essential telegram-desktop wakeonlan


