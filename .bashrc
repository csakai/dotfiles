export EDITOR='vim'
export NVM_DIR="~/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
export PATH=~/mongodb/bin:$PATH
. ~/git-completion.bash
. ~/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
export PS1='\u @ \w$(__git_ps1 " (%s)") \$ '

alias ls='ls -FGh'
alias la='ls -a'
alias ll='ls -l'
alias lal='ls -al'
sd() {
    cd ../$1
}
alias ..='sd'

#shortcut for attaching to a tmux session
alias tma="tmux attach -t"

alias matchnpm="curl -0 -L http://npmjs.org/install.sh | sh"

#Run this when the trackpad stops responding to more-than-two-finger gestures
alias fixtrackpad="sudo killall -KILL Dock"
