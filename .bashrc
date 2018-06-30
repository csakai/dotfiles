export EDITOR='vim'
#export PATH=~/mongodb/bin:$PATH
export PS1='\u @ \w  '

#git completion
. ~/git-completion.bash
#hub completion
. ~/hub.bash_completion.sh

#oh-my-git found here: https://github.com/arialdomartini/oh-my-git
omg() {
  . ~/.oh-my-git/prompt.sh
}
alias git='hub'


alias ls='ls -FGh'
alias la='ls -a'
alias ll='ls -l'
alias lal='ls -al'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
sd() {
    cd ../$1
}
alias ..='sd'

#shortcut for attaching to a tmux session
alias tma="tmux attach -t"
#shortcut for tmuxinator
#alias mux="tmuxinator"
#shortcut for starting a new tmuxinator configured tmux session
#alias tms="tmuxinator start"
#shortcut for killing a tmux session
alias tmk="tmux kill-session -t"
#shortcut for listing tmux sessions
alias tml="tmux ls"

#. ~/.bin/tmuxinator.bash

#Run this when the trackpad stops responding to more-than-two-finger gestures
alias fixtrackpad="sudo killall -KILL Dock"

[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
alias vim=/usr/local/Cellar/vim/8.0.0647/bin/vim

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
