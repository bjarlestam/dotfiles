
#-------------------------------------------------------------
# General aliases:
#-------------------------------------------------------------

alias ll="ls -la"

alias path='echo -e ${PATH//:/\\n}'
alias cd..="cd .."
alias ..="cd .."
alias which="type -a"



#-------------------------------------------------------------
# File & string-related functions:
#-------------------------------------------------------------

# Find a file with a pattern in name:
function ff() { find . -type f -iname '*'$*'*' -ls ; }

# Find a file with pattern $1 in name and Execute $2 on it:
function fe()
{ find . -type f -iname '*'${1:-}'*' -exec ${2:-file} {} \;  ; }



# npm
export PATH=$PATH:~/.node/bin

# Homebrew
export PATH=/usr/local/bin:/usr/local/sbin:$PATH

#echo "############################ in .bash_profile ##############################"
export JAVA_HOME=$(/usr/libexec/java_home)
