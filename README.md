munki.dev
===============

Vagrant setup for a munki_repo development site. Only tested on Mavericks (OS X 10.9)

Although this is a self-contained project, prior knowledge of munki will allow you to make the most of this project. To get started take a look at the [Wiki](https://code.google.com/p/munki/wiki/GettingStartedWithMunki).

Setup built with [PuPHPet](https://puphpet.com)

##Purpose of this virtual machine

This will allow you to host a munki_repo with vagrant. Great for testing code without the need for another box (all testing is done locally). The ``boostrap.sh`` file even comes with the ability to setup an initial munki_repo from Github for testing purposes.


###Prerequisites

* Vagrant  http://www.vagrantup.com
* VirtualBox  https://www.virtualbox.org
* Git  http://sourceforge.net/projects/git-osx-installer/
* Munkitools  
	[munkitools v.1- latest.dmg](https://munkibuilds.org/munkitools-latest.dmg) or  
	[munkitools v.2 - latest.pkg](https://munkibuilds.org/munkitools2-latest.pkg)


###munki_repo modifications 

Currently with Option 1, a developmental munki_repo will be pulled down via git from [munki_repo.dev](https://github.com/clburlison/munki_repo.dev). With Option 2, you can point this virtual machine to a local munki_repo that exists on your local admin machine. So theoretically you could have a complete copy of your production munki_repo on your localhost or an external hard drive. This would allow you to point to that folder and start testing/development immediately.


###Installation

Run ./bootstrap.sh


###Client setup

Your client computer will also need a copy of munkitools installed (links above). The following commands can be used with the development munki_repo from Option 1.  
````bash
sudo defaults write /Library/Preferences/ManagedInstalls SoftwareRepoURL "http://192.168.56.150/munki_repo"
sudo defaults write /Library/Preferences/ManagedInstalls ClientIdentifier testing
````

###munki.dev's future

* Support for https
* Support for client/server cert testing
* Fix connecting to the repo via hostname (munki.dev) instead of IP Address


####Credits
Inspired from Arjen van Bochoven's [munkireport.dev](https://github.com/bochoven/munkireport.dev)
