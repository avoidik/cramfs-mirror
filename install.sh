#!/bin/bash
curl -fsSLO https://github.com/avoidik/cramfs-mirror/raw/main/cramfs-1.1.tar.gz
curl -sL https://raw.githubusercontent.com/avoidik/cramfs-mirror/main/cramfs-1.1.tar.gz.sha256 | sha256sum --check
tar -zxf cramfs-1.1.tar.gz
cd cramfs-1.1/
patch -p1 <<< $(curl -sL https://raw.githubusercontent.com/avoidik/cramfs-mirror/main/patches/cramfs-include.patch)
patch -p1 <<< $(curl -sL https://raw.githubusercontent.com/avoidik/cramfs-mirror/main/patches/cramfs-makefile.patch)
make
sudo make install
