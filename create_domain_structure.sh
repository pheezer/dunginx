#!/bin/bash

base_www_path="/var/www"
domain=$1
root_www_path="/var/www/$1/www"

if [[ -n $domain ]]; then

mkdir -p $base_www_path/$domain/{logs,www,config/{auth,ssl}}

echo "staging $domain" > $root_www_path/index.html

else

echo "No arguement passed. Please provide a domain name to begin the journey.";

fi
