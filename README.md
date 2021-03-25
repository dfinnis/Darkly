# Darkly

Discover cyber security by finding 14 breaches in a website.

In the folder for each breach you will find:

* **README.md**
  * *Breach* - how to exploit a vulnerability in the website
  * *Use* - how attackers could use this breach
  * *Prevention* - how to prevent this breach

* **flag** - A hash revealed by the breach

See the [subject](https://github.com/anyashuka/Darkly/blob/master/subject.pdf) for more details.

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

Find 14 different exploitable breaches, each breach should show a *flag* proving success.


## 14 Breaches

* [Admin htpasswd](https://github.com/anyashuka/Darkly/tree/master/Admin_htpasswd)

* [Cookies](https://github.com/anyashuka/Darkly/tree/master/Cookies)

* [File Upload](https://github.com/anyashuka/Darkly/tree/master/File_Upload)

* [Hidden](https://github.com/anyashuka/Darkly/tree/master/Hidden)

* [Path Traversal](https://github.com/anyashuka/Darkly/tree/master/Path_Traversal)

* [Redirection](https://github.com/anyashuka/Darkly/tree/master/Redirection)

* [Spoof_cURL](https://github.com/anyashuka/Darkly/tree/master/Spoof_cURL)

SQL_Injection:

* [SQL_Injection_Images](https://github.com/anyashuka/Darkly/tree/master/SQL_Injection_Images)

* [SQL_Injection_Login](https://github.com/anyashuka/Darkly/tree/master/SQL_Injection_Login)

* [SQL_Injection_Members](https://github.com/anyashuka/Darkly/tree/master/SQL_Injection_Members)

XSS:

* [XSS_Basic](https://github.com/anyashuka/Darkly/tree/master/XSS_Basic)

* [XSS_Object](https://github.com/anyashuka/Darkly/tree/master/XSS_Object)

* [XSS_Recover_Password](https://github.com/anyashuka/Darkly/tree/master/XSS_Recover_Password)

* [XSS_Survey](https://github.com/anyashuka/Darkly/tree/master/XSS_Survey)
