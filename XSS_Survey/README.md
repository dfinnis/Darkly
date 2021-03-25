# XSS - Survey

See [XSS_Recover_Password](https://github.com/anyashuka/Darkly/tree/master/XSS_Recover_Password) for more XSS description, use and prevention.


## Breach

Go to page:

{VM_IP/?page=survey

Open the page inspector tool, search for values to POST that you can modify. <br>
Select a grade value and modify it:

```html
<select name="valeur" onchange="javascript:this.form.submit();">
	<option value="1">1</option>
	<option value="2">2</option>
	<option value="3">3</option>
	<option value="4">4</option>
	<option value="5">5</option>
	<option value="6">6</option>
	<option value="7">7</option>
	<option value="8">8</option>
	<option value="9">9</option>
	<option value="10">10</option>
```

For example:

```html
<option value="1">1</option>    becomes ->    <option value="100">1</option>
```

On the normal page, select the value you edited
... Here we find:

The flag is : 03a944b434d5baff05f46c4bede5792551a2595574bcafc9a6e25f67c382ccaa


## Use

Attackers can fold malicious content into the content that's being delivered from the compromised site.


## Prevention

Validate HTTP POST requests.
