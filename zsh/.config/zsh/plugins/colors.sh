#!/usr/bin/env bash

GLight (){
sed -i '$d' "/mnt/c/Users/Shreeram Modi/AppData/Roaming/alacritty/alacritty.yml"

echo "colors: *gruvbox_material_medium_light" >> "/mnt/c/Users/Shreeram Modi/AppData/Roaming/alacritty/alacritty.yml"
}


GDark (){
sed -i '$d' "/mnt/c/Users/Shreeram Modi/AppData/Roaming/alacritty/alacritty.yml"

echo "colors: *gruvbox_material_medium_dark" >> "/mnt/c/Users/Shreeram Modi/AppData/Roaming/alacritty/alacritty.yml"
}

SLight (){
sed -i '$d' "/mnt/c/Users/Shreeram Modi/AppData/Roaming/alacritty/alacritty.yml"

echo "colors: *solarized_light" >> "/mnt/c/Users/Shreeram Modi/AppData/Roaming/alacritty/alacritty.yml"
}

SDark (){
sed -i '$d' "/mnt/c/Users/Shreeram Modi/AppData/Roaming/alacritty/alacritty.yml"

echo "colors: *solarized_dark" >> "/mnt/c/Users/Shreeram Modi/AppData/Roaming/alacritty/alacritty.yml"
}
