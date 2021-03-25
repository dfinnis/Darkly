# Admin htpasswd

*htpasswd* stores usernames and passwords for authentication of HTTP users.


## Breach

Go to page:

{VM_IP}/whatever

This page contains a folder *htpasswd*, which contains a file. 
Inside the file is...
root:8621ffdbc5698829397d97767ac13db3

[md5 decrypt](https://md5decrypt.net)(8621ffdbc5698829397d97767ac13db3) = dragon.

Now go to page:

{VM_IP}/admin

And enter username: root, password: dragon.

The flag is : d19b4823e0d5600ceed56d5e896ef328d7a2b9e7ac7e80f4fcdb9b10bcb3e7ff 


## Use

Once logged in as user *root*, you can run commands with full system privileges.


## Prevention

Priveleges to the htpasswd file should only be granted to admins, rather than anyone who simply adds '/whatever' to the home url.
