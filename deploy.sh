#!bin/bash

bundle exec jekyll build
cd ../eltallerdelhuerto
cp -r ../jasper2-pages/* .

if [ "$1" != "" ]; then
    git commit -am "$1"
else
    git commit -am "Automatic deploy"
fi
git push origin master
cd ../carrascoacd.github.io

echo "Done!"