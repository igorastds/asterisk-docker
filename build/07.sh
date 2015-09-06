#!/bin/sh
cd /usr/src/asterisk-13.5.0 && ./configure && contrib/scripts/get_mp3_source.sh && make menuselect && make && make install && make samples
