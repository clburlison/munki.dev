munki.dev
===============

Blog post regarding setup [here](http://www.clburlison.com/blog/2014/05/17/creating-a-development-munki-repo/)

Vagrant setup for a munki_repo development site. Only tested on Mavericks (OS X 10.9)

###Prerequisites

* Vagrant  http://www.vagrantup.com
* VirtualBox  https://www.virtualbox.org
* Git  http://sourceforge.net/projects/git-osx-installer/
* Munkitools  [munkitools v.1- latest.dmg](https://munkibuilds.org/munkitools-latest.dmg) or [munkitools v.2 - latest.pkg](https://munkibuilds.org/munkitools2-latest.pkg)

###Installation

Run ``./bootstrap.sh``

###Cleanup

Run ``./cleanup.sh`` to destroy the virtual machine and delete all of the files that were created by this project. _Note_: this will also delete your munki_repo. This might not be the desired effect you wish to have.


###Client setup

Your client computer will also need a copy of munkitools installed (links above). The following commands can be used with the development munki_repo from Option 1.  
````bash
sudo defaults write /Library/Preferences/ManagedInstalls SoftwareRepoURL "http://munki.dev/munki_repo"
sudo defaults write /Library/Preferences/ManagedInstalls ClientIdentifier testing
````

####Credits
Inspired from Arjen van Bochoven's [munkireport.dev](https://github.com/bochoven/munkireport.dev)
Built with [PuPHPet](https://puphpet.com)