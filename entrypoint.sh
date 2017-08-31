#! /bin/bash
composer require -vvv "laravel/installer"
/vendor/laravel/installer/laravel new laravel
tar -czvf laravel_installer.tar.gz /vendor
mv laravel_installer.tar.gz /builds/
tar -czvf laravel_release.tar.gz /laravel
mv laravel_release.tar.gz /builds/ 
