#! /bin/bash
echo $(date) > build.date
git add .
git commit -m "build date: $(date '+%Y-%m-%d %H:%M:%S')"
git tag $(date '+%Y-%m-%d-%H-%M-%S')
git push origin master $(date '+%Y-%m-%d-%H-%M-%S')
