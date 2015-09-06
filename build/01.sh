#!/bin/sh
cd /usr/src && wget https://iksemel.googlecode.com/files/iksemel-1.4.tar.gz && tar xf iksemel-1.4.tar.gz && cd /usr/src/iksemel-* && ./configure && make && make install
