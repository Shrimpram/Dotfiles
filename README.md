# My Dotfiles
These are my personal dotfiles. Most of what I use can be found here, including specific configs for neovim and the like. If you have any questions feel free to reach out =)

## Setup
I use [GNU stow](https://www.gnu.org/software/stow/) to manage my dotfiles. Stow is a symlink farm manager that lets me keep all my dotfiles and then symlink them to my config directory as they are needed. Other tools exist but stow allows for a much more modular approach where I can choose to only link the dotfiles that I need for whatever job I need to do. Another benefit of stow I unintentionally found was the ability to quickly un-link the config files for programs to allow me to create a minimal working environment for debugging while also keeping my config files at an arms reach.

## Installation
### General
1. Install yadm via whatever method you prefer
2. `cd ~` or to whatever directory you want to install my dotfiles to
3. `yadm clone https://github.com/Shrimpram/dotfiles.git` to clone my dotfiles to your working directory
4. `yadm submodule update --init --recursive --remote` to initialize and update all the submodules that I have installed
5. `cd stow` to move to the stow directory where all the non-package manager installable programs are
6. check if any of the programs here are installable via your package manager. If so, do that and either remove or ignore them when you stow with the `--ignore=REGEX` flag
7. `stow -v -d . -t /usr/local/ -S *` to stow all the programs in the stow directory to your bin folder

### NeoVim
1. Install [neovim](https://github.com/neovim/neovim) using whatever method you want
2. Open neovim
3. Type `:PlugInstall` to install all plugins
