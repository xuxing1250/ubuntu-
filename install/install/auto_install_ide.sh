#!/bin/bash
git config --global user.name "$1"
git config --global user.email "$1@vanzotec.com"
cp ~/oos_team/common/config ~/.ssh/
./auto_remote_login.sh

cp -r ~/oos_team/common/bin ~
cp -r ~/oos_team/common/kern.vim ~/.vim
cp ~/oos_team/common/kern.vimrc ~/.vimrc
cat ~/oos_team/common/kern.gitconfig >> ~/.gitconfig
mkdir ~/ide
cd ~/ide
tar zxvf ~/oos_team/common/android-sdk-linux-xjj.tgz
echo PATH=\$PATH:\~/ide/android-sdk-linux/tools:\~/ide/android-sdk-linux/platform-tools:\~/bin >> ~/.bashrc
