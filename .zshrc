## OLD VERSION ##

setopt histignorealldups sharehistory

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000000
SAVEHIST=1000000
HISTFILE=~/.zsh_history

alias f='/home/sim/Franz-linux-x64-4.0.4/Franz &>/dev/null &!'

alias meteo='curl -4 http://wttr.in/Lyon'

alias i='/home/sim/dev/idea-IU-163.9166.29/bin/idea.sh &>/dev/null &!'

alias start='docker start grunt dbHost dbHostTest dbHostTest2; docker attach grunt'

alias g='git'

alias build='docker start dbHost dbHostTest dbHostTest2; docker run --net mynet123 -v ~/.ivy2/:/root/.ivy2 -v ~/dev/claudeCI/buildScripts:/root/buildScripts --link dbHostTest:dbHostTest2 build /bin/bash /root/buildScripts/runBuild.sh'

alias prod='ssh -o StrictHostKeyChecking=no -t debian@149.202.162.220 "/home/debian/prod.sh"'

alias buildScheduler='docker run -v ~/.ssh:/root/.ssh/ -v ~/.ivy2/:/root/.ivy2 -v ~/dev/claudeCI/buildScripts:/root/buildScripts build /bin/bash /root/buildScripts/runBuildScheduler.sh'

alias buildPriceDecision='docker start price_decision_test; docker run --net mynet123 -v ~/.ssh:/root/.ssh/ -v ~/.ivy2/:/root/.ivy2 -v ~/dev/claudeCI/buildScripts:/root/buildScripts --link price_decision_test:price_decision_test build /bin/bash /root/buildScripts/priceDecision.sh'

alias buildOrgaDashboard='docker start organizerDashboardDb; docker run --net mynet123 -v ~/.ssh:/root/.ssh/ -v ~/.ivy2/:/root/.ivy2 -v ~/dev/claudeCI/buildScripts:/root/buildScripts --link organizerDashboardDb:organizerDashboardDb build /bin/bash /root/buildScripts/organizerDashboard.sh'

alias r='~/resolution.sh'

#function push { docker run -e d="$1" -v ~/.ivy2/:/root/.ivy2 --link dbHost:dbHost --link dbHostTest:dbHostTest2 -v /home/sim/dev/master:/claude -ti push /bin/bash push.sh; }

#export -f push

PATH=$PATH:/home/sim/dev/sbt/bin

# don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth





## END OLD VERSION ##








# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/home/sim/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
