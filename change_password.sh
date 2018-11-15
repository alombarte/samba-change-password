#!/bin/sh

if [ "$#" -ne 2 ]; then
    echo "Syntax: $0 domain.local user.name"
	exit 1
fi

smbpasswd -r "$1" -U "$2"
