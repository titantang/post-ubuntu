#!/bin/bash

########################################
# common
########################################
sudo apt-get install kvm virt-manager emacs23 vim-gnome vim build-essential cairo-dock vlc flashplugin-installer xul-ext-notify libnotify-bin pidgin busybox  wine1.2 elinks curl git-core filezilla openvpn gmail-notify htop gstreamer0.10-ffmpeg gstreamer0.10-fluendo-mp3 gstreamer0.10-plugins-ugly unrar p7zip chmsee zsh


########################################
# development
########################################
sudo apt-get install openjdk-6-jdk maven2 tomcat6 php5 apache2 mysql-server bison autoconf automake zlib1g zlib1g-dev zlibc libssl-dev libreadline5-dev libxml2-dev libsqlite3-dev


########################################
# post-install
########################################
# oh-my-zsh
wget http://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh
#TODO: vim settings

# input method
sudo add-apt-repository ppa:ibus-dev/ibus-1.3-lucid
sudo apt-get update
sudo apt-get install ibus
sudo apt-get install ibus-sunpinyin
wget http://sunpinyin.googlecode.com/files/sunpinyin_importer.tar.bz2 -O /tmp
wget http://download.pinyin.sogou.com/dict/download_cell.php?id=4&name=%CD%F8%C2%E7%C1%F7%D0%D0%D0%C2%B4%CA%A1%BE%B9%D9%B7%BD%CD%C6%BC%F6%A1%BF&f=idxb&f=idxdict -O network-hot.scel
wget http://download.pinyin.sogou.com/dict/download_cell.php?id=15117&name=%BC%C6%CB%E3%BB%FA%B4%CA%BB%E3%B4%F3%C8%AB%A1%BE%B9%D9%B7%BD%CD%C6%BC%F6%A1%BF -O computer.scel
tar xvf /tmp/sunpinyin_importer.tar.bz2 
cd /tmp/sunpinyin_importer && python import_sogou_celldict.py /tmp/network-hot.scel && python import_sogou_celldict.py /tmp/computer.scel


########################################
# post-install for development
########################################
# rvm
bash < <( curl http://rvm.beginrescueend.com/releases/rvm-install-head )
rvm install 1.8.7
rvm install 1.9.2
rvm default 1.9.2
rvm 1.9.2
gem install rails sqlite3-ruby

