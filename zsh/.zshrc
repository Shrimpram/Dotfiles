##################################################
# Powerlevel 10k (my zsh theme of choice)
##################################################
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/.config/zsh/plugins/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


# Run neofetch. --ascii flag allows custom ASCII art to show up. Mine links to an ASCII art of Butthead from Beavis and Butthead
# neofetch

##################################################
# Config
##################################################
# https://github.com/microsoft/WSL/issues/4793
export DISPLAY=$WSL_IF_IP:0
unset LIBGL_ALWAYS_INDIRECT


# adds go to path
export PATH=$PATH:/usr/local/go/bin


# vi mode
bindkey -v
export KEYTIMEOUT=1

# Edit line in vim with ctrl-e:
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

setopt autocd		# Automatically cd into typed directory.


# Set editor to nvim
export EDITOR="nvim"


export PAGER=most


##################################################
# Plugins
##################################################
[[ -s /home/shreeram/.config/zsh/plugins/autojump/.autojump/etc/profile.d/autojump.sh ]] && source /home/shreeram/.config/zsh/plugins/profile.d/autojump.sh


# Enable zoxide for fast hopping around directories
eval "$(zoxide init zsh)"

# Basic auto/tab complete:
autoload -U compinit && compinit -u
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

for f in ~/.config/zsh/plugins/*; do source $f; done
# source ~/.config/zsh/plugins/**



# FFF Config
source ~/.config/zsh/plugins/fff.sh

export PATH=~/.config/zsh/plugins/showimg:$PATH
export PATH=~/.config/zsh/plugins/mintheme:$PATH

# Alias necessary for nvbn/thefuck to work
# eval $(thefuck --alias)

# For transfer.sh config
source ~/.config/zsh/plugins/transfer.sh

# My own color-switching script
source ~/.config/zsh/plugins/colors.sh

##################################################
# Colors
##################################################
autoload -U colors && colors

LS_COLORS=$LS_COLORS:'ow=1;35:di=1;35:' ; export LS_COLORS

##################################################
# Aliases
##################################################
# some ls aliases
alias ls='ls --color=auto --group-directories-first'
alias ll='ls --color=auto --group-directories-first -alF'
alias la='ls --color=auto --group-directories-first -A'
alias l='ls --color=auto --group-directories-first -CF'


# some exa aliases
alias e='exa'
alias ea='exa --all'
alias el='exa --long --header --git --icons --classify --all'
alias et='exa --tree --level=2 --long --header --git --icons --classify --all'


# alias to quickly access my taskell
alias 't'="taskell ~/taskell.md"
