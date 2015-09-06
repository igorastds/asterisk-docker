#!/bin/sh
cd /usr/src/jansson && autoreconf -i && ./configure && make && make install
