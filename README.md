# My Dotfiles
These are my personal dotfiles. Most of what I use can be found here, including specific configs for neovim and the like. If you have any questions feel free to reach out =)

## Setup
The two main programs I use to manage my configuration are [yadm](https://github.com/TheLocehiliosan/yadm) and [GNU stow](https://www.gnu.org/software/stow/):
- yadm is a general purpose git-like dotfiles manager that I use to manage this dotfiles repo
- stow is a symlink manager that I use to easily manage all the programs that I use which aren't found in my package manager

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
