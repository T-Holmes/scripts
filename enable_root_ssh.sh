#!/bin/bash

##################################################################
# Name:         enable_root_ssh.sh
# Description: 	Script to enable ssh for root user on ubuntu.
# Author:	      Tyler Holmes 
# Created On: 	December 17th 2020
##################################################################

# Add line to ssh config that enable root ssh capabilities with documentation
echo # Allow ssh for root >> /etc/ssh/sshd_config 
echo PermitRootLogin yes >> /etc/ssh/sshd_config

# Restart ssh server
systemctl restart sshd
