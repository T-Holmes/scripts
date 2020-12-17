#!/bin/bash

##################################################################
# Name:         install_helix-p4d.sh
# Description: 	Script to setup helix-p4d on Ubuntu bionic distro.
# Author:	      Tyler Holmes 
# Created On: 	December 17th 2020
##################################################################

# Add the Perforce packaging key to your APT keyring
wget -qO - https://package.perforce.com/perforce.pubkey | sudo apt-key add -

# Create source list file if it does not exist
touch /etc/apt/sources.list.d/perforce.list

# Add source for Ubuntu bionic distro
echo deb http://package.perforce.com/apt/ubuntu bionic release >> /etc/apt/sources.list.d/perforce.list

# Update sources
apt-get update -y

# Install helix-p4d
apt-get install helix-p4d -y
