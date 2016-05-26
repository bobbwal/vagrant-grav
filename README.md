# vagrant-grav

vagrant-grav is a fork of the excellent [vagrantpress](https://github.com/vagrantpress/vagrantpress/).
It aims to provide a lightweight Vagrant box for developing with Grav and its
admin plugin.

# What's Installed

+ Ubuntu Trusty (14.04)
+ Grav 1.0.10 (including admin plugin)
+ PHP
+ Git
+ Composer

# Prerequisites

+ [Vagrant](http://www.vagrantup.com/downloads.html)
+ [Virtualbox](https://www.virtualbox.org/wiki/Downloads)
+ [Vagrant Hostsupdater](https://github.com/cogitatio/vagrant-hostsupdater)

## Getting Started

This is a fairly simple project to get up and running.  
The procedure for starting up a working WordPress is as follows:

1. Clone the project.  (There’s only master branch.)
2. Run `vagrant plugin install vagrant-hostsupdater` from command line
2. Run the command `vagrant up` from the directory
3. Open your browser to http://grav.dev
