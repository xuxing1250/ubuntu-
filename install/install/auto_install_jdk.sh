#!/bin/bash
#sudo add-apt-repository ppa:webupd8team/java
#sudo apt-get update
#sudo apt-get install -y oracle-java7-installer
#sudo apt-get install -y oracle-java8-installer
#sudo update-java-alternatives -l 查看所有jdk版本
#sudo update-java-alternatives -s java-7-oracle 切换到jdk7
#sudo update-java-alternatives -s java-8-oracle 切换到jdk8
sudo add-apt-repository ppa:openjdk-r/ppa
sudo apt-get update
sudo apt-get install -y openjdk-7-jdk
sudo apt-get install -y openjdk-8-jdk
#sudo update-alternatives --config java 切换java版本
#sudo update-alternatives --config javac 切换javac版本
