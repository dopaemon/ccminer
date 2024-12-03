#!/bin/sh
# ~/ccminer/ccminer -c ~/ccminer/config.json
./ccminer -a verus -o stratum+tcp://na.luckpool.net:3956 -u RCdEka2mbYDGXQjj79mYvQRNjbEnYUVqva.A -t $(nproc --all) --nicehash
