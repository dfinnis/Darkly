# XSS - Recover Password

XSS attacks enable attackers to inject client-side scripts into web pages viewed by other users.

Security on the web depends on a variety of mechanisms, including an underlying concept of trust 
known as the same-origin policy. This essentially states that if content from one site 
(such as https://mybank.example1.com) is granted permission to access resources (like cookies etc.) on a web browser, 
then content from any URL with the same (1) URI scheme, (2) host name, and (3) port number will share 
these permissions. Content from URLs where any of these three attributes are different will 
have to be granted permissions separately.

Exploiting one of these, attackers fold malicious content into the content being delivered from the compromised site.
When the resulting combined content arrives at the client-side web browser, it has all been delivered from the trusted source,
and thus operates under the permissions granted to that system.


## Exploit

Go to page:

{VM_IP}/?page=recover

The recovery password is being sent to an email that's hardcoded in HTML.
Change the recovery email and it will send the password (or in this case, flag) wherever you want.

The flag is : 1d4855f7337c0c14b6f44946872c4eb33853f40b2d54393fbe94f49f1e19bbb0


## Use

Exploiting one of these, attackers fold malicious content into the content being delivered from the compromised site.
When the resulting combined content arrives at the client-side web browser, 
it has all been delivered from the trusted source, and thus operates under the permissions granted
to that system.


### Persistent (Stored) attacks

The persistent XSS vulnerability is a more devastating variant of a cross-site scripting flaw: 
it occurs when the data provided by the attacker is saved by the server, and then permanently displayed 
on "normal" pages returned to other users in the course of regular browsing, without proper HTML escaping.

Persistent XSS vulnerabilities can be more significant than other types because an attacker's malicious 
script is rendered automatically, without the need to individually target victims or lure them to a 
third-party website. Particularly in the case of social networking sites, the code would be further designed
to self-propagate across accounts, creating a type of client-side worm.


## Prevention

- Contextual output encoding/escaping of string input
- HTML santization / safely validating untrusted HTML input
- Cookie security, disabling scripts
