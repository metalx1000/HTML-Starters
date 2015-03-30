#!/bin/bash

dir="/usr/local/bin/"

if [[ $EUID -ne 0 ]]; then
  echo "You must be a root user"
  echo "Trying to restart script as sudo"
  sudo $0 $@
  exit 
fi

echo "Getting Scripts..."
wget "https://raw.githubusercontent.com/metalx1000/HTML-Starters/master/make_html" -O "${dir}make_html"
