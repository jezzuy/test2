#!/bin/sh
find /var/www/html -type d -exec chmod 775 {} \;
find /var/www/html -type f -exec chmod 644 {} \;
apache2-foreground