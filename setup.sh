#!/usr/bin/env bash

# lua-5.3.3.tar.gz	2016-05-30

curl -R -O http://www.lua.org/ftp/lua-5.3.3.tar.gz

tar zxf lua-5.3.3.tar.gz

cd lua-5.3.3

sudo make linux install
