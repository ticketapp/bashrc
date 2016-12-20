# Set up the prompt

autoload -Uz promptinit
promptinit
prompt adam1

setopt histignorealldups sharehistory

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000000
SAVEHIST=1000000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

alias f='/home/sim/Franz-linux-x64-4.0.4/Franz &'

alias meteo='curl -4 http://wttr.in/Lyon'

alias i='/home/sim/dev/idea-IU-163.9166.29/bin/idea.sh &'

alias start='docker start grunt dbHost dbHostTest dbHostTest2; docker attach grunt'

alias g='git'

alias build='docker run -v ~/.ivy2/:/root/.ivy2 -v ~/dev/claudeCI/buildScripts:/root/buildScripts --link dbHost:dbHost --link dbHostTest:dbHostTest2 build /bin/bash /root/buildScripts/runBuild.sh'

alias prod='ssh -o StrictHostKeyChecking=no -t debian@149.202.162.220 "/home/debian/prod.sh"'


alias buildScheduler='docker run -v ~/.ssh:/root/.ssh/ -v ~/.ivy2/:/root/.ivy2 -v ~/dev/claudeCI/buildScripts:/root/buildScripts build /bin/bash /root/buildScripts/runBuildScheduler.sh'

alias buildPriceDecision='docker run -v ~/.ssh:/root/.ssh/ -v ~/.ivy2/:/root/.ivy2 -v ~/dev/claudeCI/buildScripts:/root/buildScripts build /bin/bash /root/buildScripts/priceDecision.sh'

alias r='~/resolution.sh'

#function push { docker run -e d="$1" -v ~/.ivy2/:/root/.ivy2 --link dbHost:dbHost --link dbHostTest:dbHostTest2 -v /home/sim/dev/master:/claude -ti push /bin/bash push.sh; }

#export -f push

PATH=$PATH:/home/sim/dev/sbt/bin

# don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth

