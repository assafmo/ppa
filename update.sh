#!/bin/bash

set -e
set -v

export KEYNAME=91179AA1A67CC24B34182F6DD31B19D84B2E120C

(
    set -e
    set -v

    cd ./ubuntu/

    # Packages & Packages.gz
    dpkg-scanpackages --multiversion . > Packages
    gzip -k -f Packages

    # Release, Release.gpg & InRelease
    apt-ftparchive release . > Release
    gpg --default-key "${KEYNAME}" -abs -o - Release > Release.gpg
    gpg --default-key "${KEYNAME}" --clearsign -o - Release > InRelease
)