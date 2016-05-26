# vagrant-grav

vagrant-grav is a fork of the excellent [vagrantpress](https://github.com/vagrantpress/vagrantpress/).
It aims to provide a lightweight Vagrant box for developing with Grav and its
admin plugin.

## What do I get?

+ Ubuntu Trusty (14.04)
+ Grav 1.0.10 (including admin plugin)
+ PHP
+ Git
+ Composer

## Prerequisites

+ [Vagrant](http://www.vagrantup.com/downloads.html)
+ [VirtualBox](https://www.virtualbox.org/wiki/Downloads)

## Getting Started

Getting vagrant-grav up and running is fairly simple. Firstly, make sure you've
got the prerequisites installed. Then follow these steps:

1. Download the project, extract it and place it somewhere appropriate.
2. Run `sudo vagrant plugin install vagrant-hostsupdater` from command line
3. `cd` into this directory and run `vagrant up`
4. Open http://grav.dev in your browser
