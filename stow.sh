#!/usr/bin/env bash

read -p "What do you want to do? ([S]tow/[D]elete links/[R]estow): " x

echo "Stowing binaries"

cd binaries

sudo stow -v -"$x" * -t /usr/local/
