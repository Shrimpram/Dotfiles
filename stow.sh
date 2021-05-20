#!/usr/bin/env sh

read -p "What do you want to do? ([S]tow/[D]elete links/[R]estow): " x

cd binaries

if [ "$x" = S ]
then
    echo "Stowing binaries"
elif [ "$x" = D ]
then
    echo "Deleting symlinks"
elif [ "$x" = R ]
then
    echo "Restowing binaries"
else
    echo "Invalid input, aborting"
    exit
fi

sudo stow -v -"$x" * -t /usr/local/
