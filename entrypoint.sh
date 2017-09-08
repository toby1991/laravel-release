#! /bin/bash
# build laravel installer
composer require -vvv "laravel/installer"
tar -czvf laravel_installer.tar.gz /vendor
mv laravel_installer.tar.gz /builds/

# build laravel
/vendor/laravel/installer/laravel new laravel
cd /laravel
composer install -vvv
cd /
tar -czvf laravel_release.tar.gz /laravel
mv laravel_release.tar.gz /builds/ 
