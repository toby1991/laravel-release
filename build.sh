#! /bin/bash
docker run --rm --tty -v $(pwd)/builds:/builds toby1991/laravel-release:latest
git add . 
git commit -m 'laravel new version released'
git push
