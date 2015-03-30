#!/bin/bash

dir="/usr/local/bin/"

if [[ $EUID -ne 0 ]]; then
  echo "You must be a root user"
  echo "Trying to restart script as sudo"
  sudo $0 $@
  exit 
fi

echo "Getting Scripts..."
scripts=("make_html")
for i in "${scripts[@]}"
do
  wget "https://raw.githubusercontent.com/metalx1000/HTML-Starters/master/${scripts[i]}" -O "${dir}${scripts[i]}"
  chmod +x "${dir}${scripts[i]}"
done

