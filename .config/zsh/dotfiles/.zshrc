# speedie's zsh configuration
# https://github.com/speedie-de/szsh

# Features
autoload -U colors && colors
autoload -Uz compinit
zmodload
zstyle ':completion:*' menu select
compinit
_comp_options+=(globdots)
export HISTSIZE=100
export HISTFILE=$ZDOTDIR/history
export SAVEHIST=$HISTSIZE
export DOTNET_CLI_TELEMETRY_OPTOUT=true
export XDG_DESKTOP_DIR="/dev/null"

# Source other dotfiles
source $ZDOTDIR/.zsh_export
source $ZDOTDIR/.zsh_ps
source $ZDOTDIR/.zsh_alias

# Plugins
source $ZPLUGINDIR/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZPLUGINDIR/zsh-vi-mode/zsh-vi-mode.zsh
source $ZPLUGINDIR/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#######################################################
cd && clear

$FETCH

