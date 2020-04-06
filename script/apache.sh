#!/bin/bash
sudo sed -i 's|/var/www/html|/var/www/html/humhub|g' /etc/apache2/sites-available/000-default.conf
sudo sed -i '10i\        \<Directory /var/www/html>' /etc/apache2/sites-available/000-default.conf
sudo sed -i '11i\           \AllowOverride All'      /etc/apache2/sites-available/000-default.conf
sudo sed -i '12i\        \</Directory>'              /etc/apache2/sites-available/000-default.conf
sudo systemctl restart apache2
