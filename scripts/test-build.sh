#!/usr/bin/bash

set -eou pipefail

pushd "$1"

echo -e "\nSPECTOOL\n"

spectool -g -R "$2"

echo -e "\nPATCH\n"

if stat -t *.patch >/dev/null 2>&1; then
    echo "Copying patch files to " ~/rpmbuild/SOURCES/
    cp *.patch ~/rpmbuild/SOURCES/
fi
if stat -t macros.hyprland >/dev/null 2>&1; then
    echo "Copying macros.hyprland to " ~/rpmbuild/SOURCES/
    cp macros.hyprland ~/rpmbuild/SOURCES/
fi

echo -e "\nBUILDDEP\n"

sudo dnf builddep "$2" -y --refresh

echo -e "\nSRPM\n"

rpmbuild -bs "$2"

echo -e "\nRPM\n"

rpmbuild -bb "$2"

echo -e "\nFINISHED\n"

