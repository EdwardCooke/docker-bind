#!/bin/sh

echo "Downloading latest named.root and saving to /etc/bind/named.root"
curl https://www.internic.net/domain/named.root -o /etc/bind/named.root
echo "Done"

named -g -u named