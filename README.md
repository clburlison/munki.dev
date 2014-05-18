munki.dev
===============

Blog post regarding setup [here]()

Vagrant setup for a munki_repo development site. Only tested on Mavericks (OS X 10.9)

Although this is a self-contained project, prior knowledge of munki will allow you to make the most of this project. To get started take a look at the [Wiki](https://code.google.com/p/munki/wiki/GettingStartedWithMunki).

Setup built with [PuPHPet](https://puphpet.com)

###Prerequisites

* Vagrant  http://www.vagrantup.com
* VirtualBox  https://www.virtualbox.org
* Git  http://sourceforge.net/projects/git-osx-installer/
* Munkitools  
	[munkitools v.1- latest.dmg](https://munkibuilds.org/munkitools-latest.dmg) or  
	[munkitools v.2 - latest.pkg](https://munkibuilds.org/munkitools2-latest.pkg)

###Installation

Run ./bootstrap.sh


###Client setup

Your client computer will also need a copy of munkitools installed (links above). The following commands can be used with the development munki_repo from Option 1.  
````bash
sudo defaults write /Library/Preferences/ManagedInstalls SoftwareRepoURL "http://192.168.56.150/munki_repo"
sudo defaults write /Library/Preferences/ManagedInstalls ClientIdentifier testing
````

####Credits
Inspired from Arjen van Bochoven's [munkireport.dev](https://github.com/bochoven/munkireport.dev)
