#!/bin/bash


# Setup Tmux
sudo apt-get update 
sudo apt-get install tmux -y

cd ~/
wget https://github.com/gaurav18115/dotfiles/blob/main/.tmux.conf

# Install oh-my-zsh
rm -rf ~/.oh-my-zsh
yes | sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
zsh
sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="afowler"/' ~/.zshrc

# Install Chrome driver for rspec
sudo apt-get install chromium-driver -y
sudo apt-get install firefox -y
