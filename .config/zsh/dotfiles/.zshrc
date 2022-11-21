# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/dotfiles/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# speedie's zsh configuration
# https://github.com/speedie-de/szsh

# Features
autoload -U colors && colors
autoload -U compinit promptinit
autoload -Uz compinit
promptinit; prompt gentoo
zstyle ':completion::complete:*' use-cache 1
zstyle ':completion:*' menu select
zmodload
compinit
_comp_options+=(globdots)
export HISTSIZE=100
export HISTFILE=$ZDOTDIR/history
export SAVEHIST=$HISTSIZE
export DOTNET_CLI_TELEMETRY_OPTOUT=true
export XDG_DESKTOP_DIR="/dev/null"
export ASSUME_NO_MOVING_GC_UNSAFE_RISK_IT_WITH=go1.18

POWERLINE=true

# Source other dotfiles
source $ZDOTDIR/.zsh_export
source $ZDOTDIR/.zsh_ps
source $ZDOTDIR/.zsh_alias

# Plugins
source $ZPLUGINDIR/zsh-vi-mode/zsh-vi-mode.zsh
source $ZPLUGINDIR/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZPLUGINDIR/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZPLUGINDIR/zsh-titles/zsh-titles.zsh

#######################################################

if [ "$POWERLINE" = "true" ]; then
    source $ZPLUGINDIR/zsh-powerline/powerlevel10k.zsh-theme
    source $ZPLUGINDIR/zsh-powerline/zsh-powerline-options.zsh
fi

cd && clear

ulimit -c unlimited

#$FETCH
cat /home/anon/Documents/agnuheadterm-xterm.txt
