# Created by newuser for 5.8

export HISTFILE=~/.zsh_history
export HISTSIZE=1000
export SAVEHIST=1000

fpath+=~/.zfunc
autoload -U compinit
compinit

#allow tab completion in the middle of a word
setopt COMPLETE_IN_WORD

## keep background processes at full speed
#setopt NOBGNICE
## restart running processes on exit
#setopt HUP

## history
#setopt APPEND_HISTORY
## for sharing history between zsh processes
#setopt INC_APPEND_HISTORY
#setopt SHARE_HISTORY

## never ever beep ever
setopt NO_BEEP

## automatically decide when to page a list of completions
#LISTMAX=0

## disable mail checking
#MAILCHECK=0

#autoload -U colors
#colors

# Path to Rust
export PATH="$HOME/.cargo/bin:$PATH"

export GPG_TTY=$(tty)

# User specific aliases and functions
alias ls='lsd'
alias ll='ls -l'
alias la='ls -la'
alias lt='ls --tree'
alias tf='terraform'

# Disable .NET telemetry
export DOTNET_CLI_TELEMETRY_OPTOUT=1

# source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
eval "$(starship init zsh)"

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/bin/terraform terraform
