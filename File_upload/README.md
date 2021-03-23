# File Upload

## Exploit

Go to page:

{VM_IP}/index.php?page=upload

The upload page rejects files which are not .jpg.
However filetype is only checked against Content-Type field in request, not the file itself

find_flag.sh uploads a .txt file labeled as a .jpg. You will need to update the VM_IP in the script before running.

```./find_flag.sh```


## Use

Allows upload of malicious code


## Prevention

Don't trust the user-defined Content-Type. Validate the file type independently, e.g. check magic numbers.

https://owasp.org/www-community/vulnerabilities/Unrestricted_File_Upload

flag = 46910d9ce35b385885a9f7e2b336249d622f29b267a1771fbacf52133beddba8
