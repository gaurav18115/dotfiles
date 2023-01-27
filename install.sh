#!/bin/bash

echo "Installing tmux"
sudo apt-get update 
sudo apt-get install tmux -y

echo "Downloading .tmux.conf"
cd ~/
wget https://github.com/gaurav18115/dotfiles/blob/main/.tmux.conf

echo "Installing oh-my-zsh"
rm -rf ~/.oh-my-zsh
yes | sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
zsh
sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="afowler"/' ~/.zshrc

echo "Installing Chrome driver"
sudo apt-get install chromium-driver -y

echo "Installing firefox"
sudo apt-get install firefox -y
