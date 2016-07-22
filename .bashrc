export EDITOR='vim'
export PATH=~/mongodb/bin:$PATH
export PS1='\u @ \w \$ '

#git completion
. ~/git-completion.bash

#oh-my-git found here: https://github.com/arialdomartini/oh-my-git
. ~/.oh-my-git/prompt.sh

alias ls='ls -FGh'
alias la='ls -a'
alias ll='ls -l'
alias lal='ls -al'
sd() {
    cd ../$1
}
alias ..='sd'

#since I'm using redis2.8.*
alias redis='redis28-cli'

#shortcut for attaching to a tmux session
alias tma="tmux attach -t"
#shortcut for tmuxinator
alias mux="tmuxinator"
#shortcut for starting a new tmuxinator configured tmux session
alias tms="tmuxinator start"
#shortcut for killing a tmux session
alias tmk="tmux kill-session -t"
#shortcut for listing tmux sessions
alias tml="tmux ls"

. ~/.bin/tmuxinator.bash

alias matchnpm="curl -0 -L http://npmjs.org/install.sh | sh"

#Run this when the trackpad stops responding to more-than-two-finger gestures
alias fixtrackpad="sudo killall -KILL Dock"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
