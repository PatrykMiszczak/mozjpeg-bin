#!/bin/bash

set -o nounset
set -o errexit
set -o pipefail

curl -s https://api.github.com/repos/mozilla/mozjpeg/releases/latest \
| grep "mozjpeg*.zip" \
| cut -d : -f 2,3 \
| tr -d \" \
| tr -d , \
| wget -qi -

unzip v*.zip

cd mozjpeg-*
mkdir build
cd build
sudo cmake -G"Unix Makefiles" -DPNG_SUPPORTED=OFF ../
