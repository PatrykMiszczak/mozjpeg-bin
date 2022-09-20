#!/bin/bash

wget https://codeload.github.com/mozilla/mozjpeg/zip/master -O mozjpeg.zip

unzip mozjpeg.zip

cd mozjpeg
mkdir build
cd build
sudo cmake -G"Unix Makefiles" -DPNG_SUPPORTED=OFF ../
