munki.dev
===============

Blog post regarding setup [here](https://clburlison.com/creating-a-development-munki-repo/)

Vagrant setup for a munki_repo development site. Only tested on Mavericks (OS X 10.9)

###Prerequisites

* Vagrant  http://www.vagrantup.com
* VirtualBox  https://www.virtualbox.org
* Git  http://sourceforge.net/projects/git-osx-installer/
* Munkitools https://github.com/munki/munki/releases

###Installation

Run ``./bootstrap.sh``

###Cleanup

Run ``./cleanup.sh`` to destroy the virtual machine and delete all of the files that were created by this project. _Note_: this will also delete your munki_repo. This might not be the desired effect you wish to have.


###Client setup

Your client computer will also need a copy of munkitools installed (links above). The following commands can be used with the development munki_repo from Option 1.  
````bash
sudo defaults write /Library/Preferences/ManagedInstalls SoftwareRepoURL "http://192.168.56.150/munki_repo"
sudo defaults write /Library/Preferences/ManagedInstalls ClientIdentifier testing
````

####Credits
Inspired from Arjen van Bochoven's [munkireport.dev](https://github.com/bochoven/munkireport.dev)
Built with [PuPHPet](https://puphpet.com)
