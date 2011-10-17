# my shell variables

#export PS1="\[\033[1;44m\]\u \w\[\033[0m\] "
export PATH="$PATH:/Applications/play-1.1:/Applications/scala-2.8.1.final/bin"


#-------------------------------------------------------------
# General aliases:
#-------------------------------------------------------------

alias ll="ls -la"

alias path='echo -e ${PATH//:/\\n}'
alias cd..="cd .."
alias ..="cd .."
alias which="type -a"

#More is not installed, so use less instead
#alias more="less"

#-------------------------------------------------------------
# Project related aliases:
#-------------------------------------------------------------


alias cd_workspace="cd ~/Code/workspace"


alias cd_bizbook="cd ~/Code/bizbook/trunk"
alias run_bizbook="MAVEN_OPTS='-Xmx512m -Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=9009' && cd_bizbook && mvn jetty:run"


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
export PATH=/opt/local/bin:/opt/local/sbin:/usr/local/mysql/bin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.


export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK/Home
export M2_HOME=/opt/local/share/java/maven2
