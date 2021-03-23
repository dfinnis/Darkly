# Unsecured Cookies

Session hijacking (cookie hijacking) is the exploitation of a valid computer session (session key) to gain unauthorized access to information or services in a computer system. In particular, it is used to refer to the theft of a magic cookie used to authenticate a user to a remote server.

### What are Cookies?

Cookies are files that websites write locally to your computer. 
They have several uses: customer tracking, secure user/admin identification, or recording user data.
These data are transmitted at the end of the HTTP headers with the following form : 
Cookie: Cookie_name_1=cookie_value1; Cookie_name_2=cookie_value2, etc.

Typically, many sites store an SESSID cookie, which is your site identification variable. 
The SESSID cookie makes it possible to secure authentications 
(the server keeps a local record of the SESSID sessions used and the data linked to them, such as logins).


## Use

Cookies are a way to authenticate user identities and priveleges. Stealing a user's cookies
allows a hacker to pose as the user and thereby:
- steal sensitive of identifying information (session ID, username, email)
- access sensitive pages of a web application (payment details, for example)


## Prevention

- Never use a hashed boolean for an admin (or user) cookie to validate user priveleges. 
- Encryption of the data traffic passed between the parties by using SSL/TLS; in particular the session key.
- Send the cookie in an HTTP request only if the request is transmitted over a secure channel (typically HTTPS). (this is kind of a repetition of the last point)
- Regenerating the session id after a successful login. This prevents session fixation because 
the attacker does not know the session id of the user after they have logged in.
- Users may also wish to log out of websites whenever they are finished using them.


## 42 Example

Start at the homepage

* In Chrome:
  - Click View -> Developer -> Developer Tools -> Application -> Cookies
  - Click on the Cookies dropdown

* In Firefox:
  - Click Developer Tools -> storage inspector

... Here we find a cookie:
I_am_admin:"68934a3e9455fa72420237eb05902327"

Looks like a hash, if we decrypt this cookie value using [md5_decrypt](https://md5decrypt.net) we find (68934a3e9455fa72420237eb05902327) = "false".

Ok... that's a clue. Let's try replacing the cookie value with "true" hashed. md5 encrypt "true" = b326b5062b2f0e69046810717534cb09.

Then refresh the page...

Good job! Flag : df2eb4ba34ed059a1e3e89ff4dfc13445f104a1a52295214def1c4fb1693a5c3
