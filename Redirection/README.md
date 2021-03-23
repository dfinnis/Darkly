# Redirection

Unvalidated redirects and forwards are possible when a web application accepts untrusted input that could cause the web application to redirect towards untrusted input.

## Exploit

Go to page:

{VM_IP}/index.php

Open the page inspector tool, search for page redirects that you can modify. 
Where the social network icons are:
page=redirect&site=facebook 
change site=facebook to site=reddit

... and we find:

Good Job Here is the flag : b9e775a0291fed784a2d9680fcfad7edd6b8cdf87648da647aaf4bba288bcab3


## Use

By modifying unsecured redirect URLs to a malicious site, an attacker may successfully launch a phishing scam and steal user credentials.


## Prevention

- You need to properly sanitize all the data that you receive from the client.
- In this case, by creating a list of trusted URLs and validating any redirect requests
(wherever possible you should use a built-in library or function to parse the URLs).
