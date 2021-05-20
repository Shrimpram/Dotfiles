source /usr/share/autojump/autojump.fish

export DISPLAY=$WSL_IF_IP:0
set -e LIBGL_ALWAYS_INDIRECT

export EDITOR="nvim"
export VISUAL="nvim"

source ~/.config/fish/plugins/fff.fish

thefuck --alias | source 

alias 't'='taskell ~/dotfiles/taskell.md'
