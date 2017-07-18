# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="robbyrussell"


# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git brew ruby gem node npm yarn mercurial vagrant docker docker-compose heroku virtualenv grr)

source $ZSH/oh-my-zsh.sh

# Node nvm setup
export NVM_DIR=~/.nvm
. "/usr/local/opt/nvm/nvm.sh"

#-------------------------------------------------------------
# My stuffs below...
#-------------------------------------------------------------

# my local bin
export PATH=$PATH:~/bin

# npm
export PATH=$PATH:~/.node/bin

#mysql - could not get version 5.1 working from brew, so downloaded manually
export PATH=$PATH:/usr/local/mysql/bin


#play1.4 - could not get it to work with homebrew
#export PATH=$PATH:/usr/local/play-1.4.3
export PATH=$PATH:/usr/local/play-1.4.4


# Homebrew
export PATH=/usr/local/bin:/usr/local/sbin:$PATH


#export JAVA_HOME=$(/usr/libexec/java_home)
#export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.7.0_51.jdk/Contents/Home"
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_05.jdk/Contents/Home"

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
alias timereport_add_week="ruby ~/projects/timetracking/add_week.rb ~/Desktop/tider.txt && atom ~/Desktop/tider.txt:1120"
alias timereport="open ~/Desktop/tider.txt"

# TODO: Did not work as an alias, works when run directly on command line
alias hugo_assistans_weekly_report="pbpaste | grep '^[0-9|,]*h' | cut -d h -f 1 | sed s/,/\./g | awk '{s+=$1} END {print s}'D"

alias ios='open $(xcode-select -p)/Platforms/iPhoneSimulator.platform/Developer/Applications/iPhone\ Simulator.app'
alias firefox="open -a Firefox"
alias chrome_spdy="open /Applications/Google\ Chrome.app --args --use-spdy=no-ssl"
alias chrome_speedtracer="open /Applications/Google\ Chrome.app --args --enable-extension-timeline-api"
alias idea="open /Applications/IntelliJ\ IDEA\ 15.app"
#alias wireshark="sudo /Applications/Wireshark.app/Contents/MacOS/Wireshark"
alias myip="curl ifconfig.me"
alias atom="/Applications/Atom.app/Contents/MacOS/Atom"

alias fd='find . -type d -name'
alias ff='find . -type f -name'

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


