# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="gozilla"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

export HISTSIZE=100000
export HISTFILESIZE=100000
export MOZ_ENABLE_WAYLAND=1

plugins=(git fasd zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh
source "$HOME/.cargo/env"
set -o vi

# aliases
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias zshrefresh="source ~/.zshrc"
alias ls='exa --color=auto'
alias la='exa -a'
alias ll='exa -lah'
alias vim='nvim'
alias v='f -e nvim'

export EDITOR='vim'

export CFN_BUCKET=readysettech-tcat-justin-us-east-2

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

if [ -z $DISPLAY ] && [ "$(tty)" = "/dev/tty1" ]; then
	exec sway
fi
