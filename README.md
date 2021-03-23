# Darkly

Discover cyber security by finding 14 breaches in a website.

In the folder for each breach you will find:

* *flag* - a hash revealed by the breach

* *README.md* - how to find the flag

#### Final Score 125/100


## Getting Started

First download from 42 [*Darkly_i386.iso*](https://projects.intra.42.fr/uploads/document/document/2439/Darkly_i386.iso).

### Virtual Machine setup

On Mac OSX, install [VirtualBox](https://www.virtualbox.org/).

In VirtualBox create a new VM (click new).

* Name and operating system - Type: Linux, Version: (Oracle 64-bit)

Continue through all the next steps with the default settings:

* Memory size: 4MB
* Hard disk: Create a disk now
* Hard disk file type: VDI(VirtualBox Disk Image)
* Storage on physical hard disk: Dynamically allocated
* File size: 12,00GB

Next click Settings > Network > Adapter 1 > Attached to: Bridged Adapter.

Still in settings click Storage > Right of "Controller: IDE" there is a CD icon with a + sign (add optical drive).
Click Add Disk Image, and select *Darkly_i386.iso*.

Click Start to start the VM, once runnning it should show the IP address.

<img src="https://github.com/anyashuka/Darkly/blob/master/img/vm.png" width="480">

### Open in browser

Open a web browser and go to the IP address provided.

<img src="https://github.com/anyashuka/Darkly/blob/master/img/home.png" width="480">

### Hack

Find 14 different exploitable breaches in the website. Each breach should show a *flag*, proving success.
