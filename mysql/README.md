# Setup notes for MySQL

Per the first answer [here](https://stackoverflow.com/questions/52364415/php-with-mysql-8-0-error-the-server-requested-authentication-method-unknown-to),
the following command must be issued from the MySQL root account before MediaWiki configuration
can be completed:

    ALTER USER 'mibs'@'%' IDENTIFIED WITH mysql_native_password BY 'password';

(replace password as appropriate).