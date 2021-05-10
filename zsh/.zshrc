neofetch

#{{{Powerlevel 10k

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/.config/zsh/plugins/powerlevel10k/powerlevel10k.zsh-theme

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#}}}

#{{{Environment Variables

# Configures GPG use
export GPG_TTY=$TTY

# Adds go to path
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:~/go/bin

export PAGER="most"

export EDITOR="nvim"
export VISUAL="nvim"

#{{{Nvm

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#}}}

. "$HOME/.cargo/env"

#}}}

#{{{Zsh Specific

#{{{Settings

# vi mode
bindkey -v
export KEYTIMEOUT=1

# Edit line in vim with ctrl-e:
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

# Automatically cd into typed directory.
setopt autocd


# Basic auto/tab complete (using fzf-tab now, this is just in case I don't have that installed)
autoload -U compinit && compinit -u
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

#}}}

#{{{Plugins

for f (~/.config/zsh/plugins/*(N.))  . $f
for f (~/.config/zsh/plugins/fzf-tab/*.zsh(N.))  . $f

# Enable zoxide for fast hopping around directories
eval "$(zoxide init zsh)"

#{{{fzf-tab config
# disable sort when completing `git checkout`
zstyle ':completion:*:git-checkout:*' sort false
# set descriptions format to enable group support
zstyle ':completion:*:descriptions' format '[%d]'
# set list-colors to enable filename colorizing
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
# preview directory's content with exa when completing cd
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'exa --long --header --git --icons --classify --all -1 --color=always $realpath'
# switch group using `,` and `.`
zstyle ':fzf-tab:*' switch-group ',' '.'
# preview nvim?
zstyle ':fzf-tab:complete:nvim:*' fzf-preview 'bat --color=always $realpath'
#}}}

#}}}

#}}}

#{{{Colors

autoload -U colors && colors

LS_COLORS=$LS_COLORS:'ow=1;35:di=1;35:' ; export LS_COLORS

#}}}

#{{{Aliases

# ls aliases
alias ls='ls --color=auto --group-directories-first'
alias ll='ls --color=auto --group-directories-first -alF'
alias la='ls --color=auto --group-directories-first -A'
alias l='ls --color=auto --group-directories-first -CF'


# exa aliases
alias e='exa'
alias ea='exa --all'
alias el='exa --long --header --git --icons --classify --all'
alias et='exa --tree --level=2 --long --header --git --icons --classify --all'


# alias to quickly access my taskell
alias 't'="taskell ~/taskell.md"

#}}}
