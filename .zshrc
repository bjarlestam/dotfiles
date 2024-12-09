# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  docker
  docker-compose
  conda-env
  dbt
  gcloud
  golang
  npm
  pip
  )

ZSH_THEME_CONDA_PREFIX='%F{green} '
ZSH_THEME_CONDA_SUFFIX='%f'
RPROMPT='$(conda_prompt_info)'

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#


export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Lazy init of nvm to speed up shell start time
export NVM_LAZY=1
# Node nvm setup
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Golang
export GOROOT=/opt/homebrew/opt/go/libexec/

#-------------------------------------------------------------
# General aliases:
#-------------------------------------------------------------

alias ll="ls -lAFh"

alias path='echo -e ${PATH//:/\\n}'
alias cd..="cd .."
alias ..="cd .."
alias which="type -a"
alias grep='grep --color'

alias du1='du -hs *(/)'

alias zshrc='vim ~/.zshrc'

alias -s git="git clone"

alias chrome="open -a 'Google Chrome'"

# Time reporting aliases
alias timereport_add_week="ruby ~/projects/timetracking/add_week.rb ~/Desktop/tider.txt"
alias timereport="open ~/Desktop/tider.txt"

alias myip="curl ifconfig.me"

alias fd='find . -type d -name'
alias ff='find . -type f -name'

alias urldecode='python -c "import urllib, sys; print urllib.unquote(sys.argv[1])"'
alias urlencode='python -c "import urllib, sys; print urllib.quote(sys.argv[1])"'

source ~/.zshrc_bjarlestam_secret

# OSX aliases
alias show_hidden_files="defaults write com.apple.finder AppleShowAllFiles TRUE && killall Finder"
alias hide_hidden_files="defaults write com.apple.finder AppleShowAllFiles FALSE && killall Finder"

# OSX keybindings
bindkey "[C" forward-word
bindkey "[D" backward-word
  
# never beep
setopt NO_BEEP

~/check_for_updates.sh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '~/google-cloud-sdk/path.zsh.inc' ]; then . '~/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '~/google-cloud-sdk/completion.zsh.inc' ]; then . '~/google-cloud-sdk/completion.zsh.inc'; fi

alias ws="windsurf"

