#!/bin/sh

# init a bare repo in home directory
cd
git init --bare

# add remote
git remote add -f origin https://github.com/mknurs/dots

# enable sparse checkout
git config core.sparseCheckout true

# download a list of files
wget -O .git/info/sparse-checkout https://raw.githubusercontent.com/mknurs/dots/master/.config/sprs_list

# (sparse) pull
git pull origin master
