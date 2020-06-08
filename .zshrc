# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="robbyrussell"


# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git brew gem node npm yarn docker docker-compose heroku virtualenv grr)

source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Node nvm setup
export NVM_DIR=~/.nvm
. "/usr/local/opt/nvm/nvm.sh"

# Rust
source $HOME/.cargo/env

#-------------------------------------------------------------
# My stuffs below...
#-------------------------------------------------------------

# my local bin
export PATH=$PATH:~/bin

#mysql - could not get version 5.1 working from brew, so downloaded manually
export PATH=$PATH:/usr/local/mysql/bin


# added by Miniconda3 4.3.21 installer
# export PATH="/Users/andreas/miniconda3/bin:$PATH"  # commented out by conda initialize#play1.4 - could not get it to work with homebrew

#export PATH=$PATH:/usr/local/play-1.4.3
export PATH=$PATH:/usr/local/play-1.4.4


# Homebrew
export PATH=/usr/local/bin:/usr/local/sbin:$PATH


#export JAVA_HOME=$(/usr/libexec/java_home)
#export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.7.0_51.jdk/Contents/Home"
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_144.jdk/Contents/Home"
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk-11.0.1.jdk/Contents/Home"

# rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# tell ruby that files are utf-8, solved issues with sass compilation
export RUBYOPT='-E utf-8'

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

# Time reporting aliases
alias timereport_add_week="ruby ~/projects/timetracking/add_week.rb ~/Desktop/tider.txt"
alias timereport="open ~/Desktop/tider.txt"

# TODO: Did not work as an alias, works when run directly on command line
alias hugo_assistans_weekly_report="pbpaste | grep '^[0-9|,]*h' | cut -d h -f 1 | sed s/,/\./g | awk '{s+=$1} END {print s}'D"

alias ios='open $(xcode-select -p)/Platforms/iPhoneSimulator.platform/Developer/Applications/iPhone\ Simulator.app'
alias firefox="open -a Firefox"
alias chrome_spdy="open /Applications/Google\ Chrome.app --args --use-spdy=no-ssl"
alias chrome_speedtracer="open /Applications/Google\ Chrome.app --args --enable-extension-timeline-api"
#alias wireshark="sudo /Applications/Wireshark.app/Contents/MacOS/Wireshark"
alias myip="curl ifconfig.me"
alias atom="/Applications/Atom.app/Contents/MacOS/Atom"

alias fd='find . -type d -name'
alias ff='find . -type f -name'

alias urldecode='python -c "import urllib, sys; print urllib.unquote(sys.argv[1])"'
alias urlencode='python -c "import urllib, sys; print urllib.quote(sys.argv[1])"'

source ~/.zshrc_bjarlestam_secret

# OSX aliases
alias show_hidden_files="defaults write com.apple.finder AppleShowAllFiles TRUE && killall Finder"
alias hide_hidden_files="defaults write com.apple.finder AppleShowAllFiles FALSE && killall Finder"

# disable inline attachements in OSX Mail app
defaults write com.apple.mail DisableInlineAttachmentViewing -bool yes

# OSX keybindings
bindkey "[C" forward-word
bindkey "[D" backward-word


akamai-staging() {
    echo "$(dig +short $1 CNAME | sed 's/\.net\.$/-staging\.net/' | xargs dig +short A | tail -n1)  $1"
}
  

~/check_for_updates.sh



# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/andreas/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/andreas/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/andreas/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/andreas/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/andreas/gcloud/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/andreas/gcloud/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/andreas/gcloud/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/andreas/gcloud/google-cloud-sdk/completion.zsh.inc'; fi

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/andreas/.sdkman"
[[ -s "/Users/andreas/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/andreas/.sdkman/bin/sdkman-init.sh"

# place this after nvm initialization!
autoload -U add-zsh-hook
load-nvmrc() {
  local node_version="$(nvm version)"
  local nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$node_version" ]; then
      nvm use
    fi
  elif [ "$node_version" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc
