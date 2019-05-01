#!/bin/bash

set -e
set -v

export KEYNAME=assaf.morami@gmail.com

(
    set -e
    set -v

    cd ./ubuntu/

    # Packages & Packages.gz
    dpkg-scanpackages . > Packages
    gzip -k -f Packages

    # Release & 
    apt-ftparchive release . > Release

    # Release.gpg
    rm -f Release.gpg
    gpg --default-key ${KEYNAME} -abs -o Release.gpg Release

    # InRelease
    rm -f InRelease
    gpg --default-key ${KEYNAME} --clearsign -o InRelease Release
)