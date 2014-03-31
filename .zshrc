# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="robbyrussell"


# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git brew ruby rails gem node npm fabric mercurial bower ant mvn)

source $ZSH/oh-my-zsh.sh


#-------------------------------------------------------------
# My stuffs below...
#-------------------------------------------------------------

# npm
export PATH=$PATH:~/.node/bin

# Homebrew
export PATH=/usr/local/bin:/usr/local/sbin:$PATH

JAVA_HOME=$(/usr/libexec/java_home)

# rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

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

alias ios='open $(xcode-select -p)/Platforms/iPhoneSimulator.platform/Developer/Applications/iPhone\ Simulator.app'
alias firefox="open -a Firefox"
alias chrome_spdy="open /Applications/Google\ Chrome.app --args --use-spdy=no-ssl"
alias chrome_speedtracer="open /Applications/Google\ Chrome.app --args --enable-extension-timeline-api"
alias idea="open /Applications/IntelliJ\ IDEA\ 13.app"
alias wireshark="sudo /Applications/Wireshark.app/Contents/MacOS/Wireshark"
alias myip="curl ifconfig.me"

alias fd='find . -type d -name'
alias ff='find . -type f -name'

source ~/.zshrc_bjarlestam_secret

# OSX aliases
alias show_hidden_files="defaults write com.apple.finder AppleShowAllFiles TRUE && killall Finder"
alias hide_hidden_files="defaults write com.apple.finder AppleShowAllFiles FALSE && killall Finder"


path_append ()  { path_remove $1; export PATH="$PATH:$1"; }
path_prepend () { path_remove $1; export PATH="$1:$PATH"; }
path_remove ()  { export PATH=`echo -n $PATH | awk -v RS=: -v ORS=: '$0 != "'$1'"' | sed 's/:$//'`; }


~/check_for_updates.sh

eval "$(/Users/andreas.bjarlestam/projects/svt/escenic/manage/environment)"
