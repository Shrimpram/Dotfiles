#!/usr/bin/env bash

echo "What do you want to do?"

select x in "Stow" "Delete links" "Restow"

do
    case $x in
        "Stow" )
            echo "Stowing binaries"
            break;;
        "Delete links" )
            echo "Deleting symlinks"
            break;;
        "Restow" )
            echo "Restowing binaries"
            break;;
    esac
done

o=$(echo "$x" | sed 's/\(^.\).*/\1/')

(cd binaries && sudo stow -v -"$o" -t /usr/local/ stow-*)
