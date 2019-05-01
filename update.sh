#!/bin/bash

set -e
set -v

(
    set -e
    set -v

    cd ./ubuntu/

    # Packages & Packages.gz
    dpkg-scanpackages . > Packages
    gzip -k -f Packages

    # Release & Release.gpg
    apt-ftparchive release . > Release
    gpg --default-key assaf.morami@gmail.com -abs -o Release.gpg Release
)