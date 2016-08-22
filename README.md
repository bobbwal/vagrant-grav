# vagrant-grav

vagrant-grav is a fork of the excellent
[vagrantpress](https://github.com/vagrantpress/vagrantpress/). It aims to
provide a lightweight Vagrant box for developing with
[Grav](https://getgrav.org/) and its admin plugin.

## What do I get?

- Ubuntu Trusty 14.04
- Grav 1.1.3, including admin plugin
- PHP 5, including performance optimizations for Grav
- Composer

## Prerequisites

- [Vagrant](http://www.vagrantup.com/downloads.html)
- [VirtualBox](https://www.virtualbox.org/wiki/Downloads)

## Getting Started

Getting vagrant-grav up and running is simple! Firstly, make sure you've got the
prerequisites installed. Then follow these steps:

1. Download the project, extract it and place it somewhere appropriate.
2. Run `sudo vagrant plugin install vagrant-hostsupdater` from command line
3. Edit `Vagrantfile` and make sure you've linked your development theme.
There's a blueprint in there so you don't have to remember the syntax.
4. `cd` into this directory and run `vagrant up`
5. Open http://grav.dev in your browser
