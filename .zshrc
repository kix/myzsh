# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
source ~/.profile
 #Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
export ZSH_THEME="dpoggi"

alias tailf="tail -f"
alias ..="cd .."
alias s="sudo"
alias git='nocorrect git'
# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want disable red dots displayed while waiting for completion
# DISABLE_COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git git-flow node python symfony2 composer brew capistrano npm osx)

source $ZSH/oh-my-zsh.sh
unsetopt sharehistory
# Customize to your needs...
export PATH="/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/share/npm/bin:$PATH"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export PATH=$(cd $(which gem)/..; pwd):$PATH

preexec () {
  DATE=`date +"%Y-%m-%d %H:%M:%S"`
  C=$(($COLUMNS-21))
  echo -e "$fg[cyan]\033[1A\033[${C}C $DATE $reset_color"
}

autoload regexp-replace
autoload replace-string

zle -N replace-regex replace-string

bindkey '[D' emacs-backward-word
bindkey '[C' emacs-forward-word
bindkey '[B' replace-regex

### Added by the Heroku Toolbelt
export PATH="/usr/local/share/npm/bin:$HOME/local/node/:$usr/local/heroku/bin:$PATH"
