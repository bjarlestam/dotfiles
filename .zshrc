
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Node nvm setup
export NVM_DIR=~/.nvm
. "/usr/local/opt/nvm/nvm.sh"


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
  
~/check_for_updates.sh

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/bjarlestam/.sdkman"
[[ -s "/Users/bjarlestam/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/bjarlestam/.sdkman/bin/sdkman-init.sh"

