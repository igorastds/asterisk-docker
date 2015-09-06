#!/bin/sh
cd /usr/src/pjproject && ./configure --enable-shared --disable-sound --disable-resample --disable-video --disable-opencore-amr && make dep && make && make install
