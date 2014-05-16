#!/bin/sh
source_path=$(dirname "${0}")

# Note: you can only use on of the below options at a time.

###################################################
# Option 1 - Download test munki_repo from GitHub #
###################################################
echo "Get a test munki_repo.dev from git"

git clone https://github.com/clburlison/munki_repo.dev.git -b master munki_repo

#################################################################
# Option 2 - Use a munki_repo that exists on your admin machine #
#################################################################
# echo "Add link to a local munki_repo"
# 
# ln -s /Users/clburlison/src/mine/munki_repo.dev/ ${source_path}/munki_repo

####################
# Bookstrap the VM #
####################
echo "**** Bootstrapping munki.dev VM ****"

vagrant up

########################################
# Check /etc/hosts for munki.dev entry #
########################################
echo "Check if this VM is registered in /etc/hosts"

grep munki.dev /etc/hosts || echo 'Add 192.168.56.150 munki.dev to /etc/hosts'

#####################################################
# run makecatalogs on the munki_repo that was setup #
#####################################################
echo "Running makecatalogs on our munki_repo"

/usr/local/munki/makecatalogs ${source_path}/munki_repo