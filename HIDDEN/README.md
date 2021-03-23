# Hidden

The robots.txt file is used to tell web crawlers and other well-meaning robots a few things about the structure of a website,
including what areas do not contain interesting information (and should therefore not be indexed).

If you have sensitive areas in your robots.txt file, then you seriously need to review the architecture of your site. 
No sensitive directories should ever be accessible to the public in any way. In fact, anything exposed to the public 
should be secured, whether it is visible or not.


## Exploit

*find_flag.sh* runs the following steps of the exploit. You will need to replace the VM_IP before you run.

```./find_flag.sh```


Go to page:

{VM_IP}/robots.txt

This page contains a folder */.hidden*. Navigate to {VM_IP}/.hidden/.
Inside, you will find many directories. 

Run the following command to download all the directories to your computer:

```wget -q -e robots=off -r -nH --no-parent --reject="index.html*" '{VM_IP}/.hidden/'```

* -q quiet
* -e is a flag option it needs to be there for the robots=off to work.
* robots=off means ignore robots file. 
* --no-host-directories       don't create host directories
* --no-parent: don't follow links outside the directory

Run this command to search all the directories and subdirectories for READMEs containing numbers:

```find .hidden -name "README" -exec grep -l -e '[0-9]' {} +```

* -l, --files-with-matches
* grep -E to access the extended regular expression syntax
* -exec command ;
          Execute  command;  true  if 0 status is returned.  All following
          arguments to find are taken to be arguments to the command until
          an  argument  consisting of `;' is encountered

This reveals the filepath containing the flag:

.hidden/whtccjokayshttvxycsvykxcfm/igeemtxnvexvxezqwntmzjltkt/lmpanswobhwcozdqixbowvbrhw/README

... and here's the flag! 99dde1d35d1fdd283924d84e6d9f1d820
