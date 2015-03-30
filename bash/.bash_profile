BASH_SECRET_FILE='.bash_secret'
[ -r "$BASH_SECRET_FILE" ] && [ -f "$BASH_SECRET_FILE" ] && source "$BASH_SECRET_FILE";

export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
export DYLD_LIBRARY_PATH=$ORACLE_HOME

export OCI_HOME=$ORACLE_HOME
export OCI_LIB_DIR=$ORACLE_HOME
export OCI_INCLUDE_DIR=$ORACLE_HOME/sdk/include
export OCI_VERSION=11
export NLS_LANG=.UTF8

export NODE_PATH=/usr/local/lib/node_modules/

export PATH="$(brew --prefix php54)/bin:$PATH"
export PATH=/Users/wojciech.szostak/bin:/usr/local/bin:$PATH
export PATH=$PATH:$ORACLE_HOME

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  source $(brew --prefix)/etc/bash_completion
fi

source $(brew --prefix)/etc/bash_completion.d/git-prompt.sh
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\[\033[31m\]$(__git_ps1)\[\033[00m\]\n\$ '

# Aliases
alias ls="ls -G"
alias path='echo $PATH | tr ":" "\n" | sort'
alias clr='clear;echo "Currently logged in on $(tty), as $(whoami) in directory $(pwd)."'
alias cls='clr'
alias scala="JAVA_HOME=`/usr/libexec/java_home -v 1.7` $(brew --prefix scala29)/bin/scala"
alias st='open -a "Sublime Text 2"'
alias p='cd ~/projekty'
alias pnms='cd ~/projekty/NMS/nms'
alias pom='cd ~/projekty/AOM/offer-manager'
alias ..='cd ../'
alias ...='cd ../../'
alias ....='cd ../../../'

# Git
alias gis='git status '
alias gic='git checkout -- '

alias show="defaults write com.apple.Finder AppleShowAllFiles YES && killall Finder"
alias hide="defaults write com.apple.Finder AppleShowAllFiles NO && killall Finder"
