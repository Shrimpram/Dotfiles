#!/usr/bin/env sh

if [ -e $(which zsh) ]
then
    read -p "Set zsh as your default shell? [Y/N]: " zs
    case $zs in
        [Y/y] )
            chsh -s $(which zsh)
            echo "Zsh is now your default shell"
            break;;
        [N/n] )
            echo "Ok, moving on..."
            break;;
    esac
else
    >&2 echo "Error: zsh not installed. Please install first"
fi


echo "Installing Starship zsh prompt..."
if [ -e /usr/local/bin/starship ]
then
    echo >&2 "Error: Starship already exists. Installation cancelled."
else
    read -p "Install Starship zsh prompt? [Y/N]: " sts
    case $sts in
        [Y/y] )
            echo "Installing Starship..."
            sh -c "$(curl -fsSL https://starship.rs/install.sh)"
            break;;
        [N/n] )
            echo "Ok, moving on..."
            break;;
    esac
fi

echo "All done, zsh is now set up. It is suggested to log out and re-log in right now so that you will enter in zsh."
