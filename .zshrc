# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="robbyrussell"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git ruby rails3 gem textmate fabric mercurial)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...


#-------------------------------------------------------------
# My stuffs below...
#-------------------------------------------------------------

export PATH="$PATH:/Users/andreasbjarlestam/.gem/ruby/1.8/bin:/opt/playframework/play:/Applications/scala-2.8.1.final/bin:/Applications/jruby-1.5.6/bin:/usr/local/mysql/bin:/Applications/jad158g"

# For Culerity tests
export JRUBY_INVOCATION="jruby -J-Xmn512m -J-Xms2048m -J-Xmx2048m"

#-------------------------------------------------------------
# General aliases:
#-------------------------------------------------------------

alias gitx="open -a GitX ."

alias ll="ls -la"

alias path='echo -e ${PATH//:/\\n}'
alias cd..="cd .."
alias ..="cd .."
alias which="type -a"

alias du1='du -hs *(/)'

#More is not installed, so use less instead
#alias more="less"

alias edit_shell='vim ~/.zshrc'

# Time reporting aliases
alias timereport_add_week="cd_ruby && rvm use 1.9.2 && ruby add_week.rb ~/Desktop/tider.txt"

alias ios="open -a /Developer/Platforms/iPhoneSimulator.platform/Developer/Applications/iPhone\ Simulator.app"
alias firefox="open -a Firefox"
alias chrome_spdy="open /Applications/Google\ Chrome.app --args --use-spdy=no-ssl"
alias chrome_speedtracer="open /Applications/Google\ Chrome.app --args --enable-extension-timeline-api"

alias wireshark="sudo /Applications/Wireshark.app/Contents/MacOS/Wireshark"
alias myip="curl ifconfig.me"

#-------------------------------------------------------------
# Project related aliases:
#-------------------------------------------------------------

source ~/.zshrc_bjarlestam_secret

#-------------------------------------------------------------
# File & string-related functions:
#-------------------------------------------------------------

# Find a file with a pattern in name:
function ff() { find . -type f -iname '*'$*'*' -ls ; }

# Find a file with pattern $1 in name and Execute $2 on it:
function fe()
{ find . -type f -iname '*'${1:-}'*' -exec ${2:-file} {} \;  ; }
##
# Your previous /Users/andreasbjarlestam/.bash_profile file was backed up as /Users/andreasbjarlestam/.bash_profile.macports-saved_2010-12-07_at_20:21:26
##

# MacPorts Installer addition on 2010-12-07_at_20:21:26: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

export PATH=/opt/local/Library/Frameworks/Python.framework/Versions/2.7/bin:$PATH

# OSX aliases
alias show_hidden_files="defaults write com.apple.finder AppleShowAllFiles TRUE && killall Finder"
alias hide_hidden_files="defaults write com.apple.finder AppleShowAllFiles FALSE && killall Finder"

#-------------------------------------------------------------
# Ruby RVM config
#-------------------------------------------------------------
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.


export JBOSS_HOME="/Applications/jboss-5.1.0.GA"
export PATH=$PATH:$JBOSS_HOME/bin

export ANT_HOME="/Applications/apache-ant-1.8.2"
export PATH=$PATH:$ANT_HOME/bin

export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK/Home
#export M2_HOME=/opt/local/share/java/maven2

export MAVEN3_HOME=$HOME/apache-maven-3.0.5

# oracle environment
export ORACLE_HOME="/usr/local/oracle/instantclient10"
export DYLD_LIBRARY_PATH="${DYLD_LIBRARY_PATH}:/usr/local/oracle/instantclient10"
export LD_LIBRARY_PATH="${LD_LIBRARY_PATH}:/usr/local/oracle/instantclient10"

# MCC Django 
export DJANGO_SETTINGS_MODULE=mcc.settings


#export PATH=$HOME/Code/node/installed/bin:$PATH

path_append ()  { path_remove $1; export PATH="$PATH:$1"; }
path_prepend () { path_remove $1; export PATH="$1:$PATH"; }
path_remove ()  { export PATH=`echo -n $PATH | awk -v RS=: -v ORS=: '$0 != "'$1'"' | sed 's/:$//'`; }

