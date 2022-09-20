#!/bin/bash

wget https://codeload.github.com/mozilla/mozjpeg/zip/master -O mozjpeg-master.zip

unzip mozjpeg-master.zip

cd mozjpeg-master
mkdir build
cd build
sudo cmake -G"Unix Makefiles" -DPNG_SUPPORTED=OFF ../
