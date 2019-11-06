export EDITOR='vim'

#git completion
. ~/git-completion.bash

##simple git prompt, no OMG
#. ~/git-prompt.sh
#export GIT_PS1_SHOWDIRTYSTATE=1
#export PS1='\u @ \w$(__git_ps1 " (%s)") \$ '

#Hub-specific
#hub completion
. ~/hub.bash_completion.sh
 alias git='hub'

#simple prompt, OMG optional
export PS1='\u @ \w  '
#oh-my-git found here: https://github.com/arialdomartini/oh-my-git
omg() {
  . ~/code/oh-my-git/prompt.sh
}

#helpful aliases
alias ls='ls -FGh'
alias la='ls -a'
alias ll='ls -l'
alias lal='ls -al'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
sd() {
    cd ../$1
}
alias ..='sd'

##Tmux: https://github.com/tmux/tmux
##shortcut for attaching to a tmux session
#alias tma="tmux attach -t"
##shortcut for killing a tmux session
#alias tmk="tmux kill-session -t"
##shortcut for listing tmux sessions
#alias tml="tmux ls"

##Tmuxinator: https://github.com/tmuxinator/tmuxinator
#. ~/.bin/tmuxinator.bash
##shortcut for tmuxinator
#alias mux="tmuxinator"
##shortcut for starting a new tmuxinator configured tmux session
#alias tms="tmuxinator start"

#OSX-specific

alias vim=/usr/local/Cellar/vim/8.1.2150/bin/vim

# loads autojump https://github.com/wting/autojump
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

#WSL-specific
# alias mysqlstart='sudo service mysql start'

# Hacky stuff to remove windows-specific things from PATH
# PATH=$(echo :$PATH: | sed -e 's,:/mnt/c/Program Files/nodejs:,:,g' -e 's/^://' -e 's/:$//')
# PATH=$(echo :$PATH: | sed -e 's,:/mnt/c/Users/csakai/AppData/Roaming/npm:,:,g' -e 's/^://' -e 's/:$//')

# Add Utils and Enhancers to PATH, must be at bottom of .bashrc
# export PATH="$HOME/.rbenv/bin:$PATH"
# eval "$(rbenv init -)"

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/bash_completion" ] && \. "/usr/local/opt/nvm/bash_completion"  # This loads nvm bash_completion

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
