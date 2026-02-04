#!/bin/sh

# $1 - pkgbuild/folder name


#!/bin/bash

if [[ -z "$1" ]]; then
    echo "Error: No pkg name provided."
    exit 1
else
    echo "Pushing package: $1"
fi

mkdir ./tmp
cd ./tmp
git -c init.defaultBranch=master clone ssh://aur@aur.archlinux.org/${1}.git

cp ../${1}/* ./${1}/

cd ./${1}

makepkg --printsrcinfo > .SRCINFO




