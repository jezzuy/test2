# docker-apache-php-mysql

Docker example with Apache, MySql 8.0, PhpMyAdmin and Php

I use docker-compose as an orchestrator. To run these containers:

```
docker-compose up -d
```
Permission denied issue
Go to www container and execute command "chmod -R 777 ./"

OR

sudo find /var/www/html/ -type d -exec chmod 777 {} \;
sudo find /var/www/html/ -type f -exec chmod 777 {} \;