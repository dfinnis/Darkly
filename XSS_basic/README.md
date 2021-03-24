# XSS - Basic

## Cross Site Scripting (XSS)

XSS attacks enable attackers to inject client-side scripts into web pages viewed by other users.

## Exploit

Go to page:

{VM_IP}/index.php?page=feedback

In *Name* type "a", and in *Message* type anything.

... the following message shows up in the page inspector tool:

Uncaught ReferenceError: mtxMessage is not defined
    validate_form {VM_IP}index.php?page=feedback:57
    onsubmit {VM_IP}/index.php?page=feedback:1

... the following flag appears:

flag = 0fbb54bbf7d099713ca4be297e1bc7da0173d8b3c21c1811b916a3a86652724e

This only works with certain single letters (aceilprst) used in either the name or message. 
These letters are an anagram of 'particles'.

## Prevention

Include a function which handles edge cases in text input. 

Most modern frameworks natively handle this kind of vulnerability (like React, Vue, Angular Symfony).
