# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Node nvm setup
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion


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
  

# HISTORY / AUTOCOMPLETE
# from: https://dev.to/rossijonas/how-to-set-up-history-based-autocompletion-in-zsh-k7o

# initialize autocompletion
autoload -U compinit
compinit

# history setup
setopt APPEND_HISTORY
setopt SHARE_HISTORY
SAVEHIST=10000
HISTSIZE=9999
setopt HIST_EXPIRE_DUPS_FIRST
setopt EXTENDED_HISTORY

# autocompletion using arrow keys (based on history)
bindkey '\e[A' history-search-backward
bindkey '\e[B' history-search-forward

# never beep
setopt NO_BEEP


~/check_for_updates.sh

source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/bjarlestam/.sdkman"
[[ -s "/Users/bjarlestam/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/bjarlestam/.sdkman/bin/sdkman-init.sh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
