# Spoof cURL

HTTP headers let client and server pass additional information with an HTTP request.

* Referer header field identifies which website you just came from.
* User-Agent header field identifies the user.


## Exploit

Go to page:

{VM_IP}//index.php?page=e43ad1fdc54babe674da7c7b8f0127bde61de3fbe01def7d00f151c2fcca6d1c

Follow comments in HTML near albatross image:

* You must cumming from : "https://www.nsa.gov/" to go to the next step
* Let's use this browser : "ft_bornToSec". It will help you a lot

*find_flag.sh* sends an HTTP request with NSA's home page as *Referer* and *ft_bornToSec* as *User-Agent*.
You will need to update the IP address before running.

```./find_flag.sh```

The flag is : f2a29020ef3132e01dd61df97fd33ec8d7fcd1388cc9601e7db691d17d4d6188


## Use

This allows users with invalid credentials to access a disallowed page.


## Prevention

You cannot trust data sent by the client. Use a proper login page to handle logins.
