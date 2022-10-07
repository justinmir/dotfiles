# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="gozilla"
setopt PROMPT_SUBST

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

export HISTSIZE=100000
export HISTFILESIZE=100000

plugins=(git fasd)
source $ZSH/oh-my-zsh.sh
set -o vi

# aliases
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias zshrefresh="source ~/.zshrc"
alias ls='exa --color=auto'
alias la='exa -a'
alias ll='exa -lah'
alias vim='nvim'
export EDITOR='vim'
export ANSIBLE_REMOTE_USER=justin.miron
alias ssh-agent="run-agent"
alias ssh="TERM=xterm ssh"
alias sshpass="TERM=xterm sshpass"
alias git="noglob git"

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/bin/terraform terraform

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

setopt HIST_IGNORE_SPACE
setopt nocorrectall
