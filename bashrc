#utility

#the "app" to install an app on linux
alias install='sudo apt-get install $1'
alias save='echo $1 > $2.txt'
alias fuckcoding='sudo shutdown -P now'
alias fuck=' echo 'krishna05' | sudo -kS $(history -p \!\!)'
alias builder=' ssh build-manager@124.153.102.70 | echo 'omragvendrayanamah' '
alias ll='ls -lhA'
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'
alias cs='cd $1;ls'
alias h='history'
alias remove='sudo apt-get remove'
alias update='sudo apt-get update'
alias upgrade='sudo apt-get update && sudo apt-get upgrade'
alias reload_bash='. /etc/bash.bashrc ; . $HOME/.bashrc'
alias open='sudo gedit $1 &'
alias ..='cd ..'
alias ports='netstat -tulanp'
alias check='ping google.com'
alias dwnld_audio='cd /home/wiki/Downloads/youtube; youtube-dl -citkf 140 $1'
alias dwnld_video='cd /home/wiki/Downloads/youtube; youtube-dl -citk --prefer-ffmpeg $1'
alias mkdir="mkdir -pv"
alias wget='wget -c'
alias jobs="ps aux"
alias bashrc='echo 'krishna05' | sudo gedit ~/.bashrc'
alias ping='ping www.google.com'
alias port='netstat -tulpn | grep :8080'

#
alias sudo="sudo -E"
alias tree='tree -C'
alias hibernate="systemctl hibernate"
alias suspend="systemctl suspend"
alias lsdirs="ls -l | grep '^d'"

# Slow vim startup fix with many plugins
alias vim="vim -X"

# Show where you copy
alias cp="cp -v"

# webcam in mplayer, press G to take a shot.
alias webcam="mplayer tv:// -tv driver=v4l2:width=640:height=480:device=/dev/video0 -fps 15 -vf screenshot"

#calculator
alias cal='bc -l'

#This one will list our disk usage in human-readable units including filesystem #type, and print a total at the bottom:
alias df="df -Tha --total"

#goto workspace
alias ws_intl='cd /media/wiki/myCollection/internetBox/Dropbox/via/workspace/intl'
alias ws_india='cd /home/wiki/workspace/india'
alias eclipse='cd /home/wiki/eclipse/ ; ./eclipse &'
alias ide='cd /home/wiki/workspace/idea-IU-141.1532.4/bin/; bash idea.sh &'
alias init_intl='ws_intl; ant init.env -Denv=viveksinha'
alias init_india='ws_india; ant init.env -Denv=viveksinha'

#ant - build sandbox
alias cb_intl='update_intl ; echo 'krishna05' | sudo -kS ant clean build'
alias cb_india='update_india ; echo 'krishna05' | sudo -kS ant clean build'
alias jsp_sync='ant dev.publish.static' 
alias sync_intl='ws_intl; jsp_sync' 
alias sync_india='ws_india; jsp_sync' 

#databases
alias pgsql='psql -U postgres'
alias mysql='mysql -uroot -pvia.com'

#live databases
alias server='ssh build-manager@124.153.102.70 | echo 'omragvendrayanamah''

#most used commands
#history | awk '{CMD[$2]++;count++;}END { for (a in CMD)print CMD[a] " " CMD[a]/#count*100 "% " a;}' | grep -v "./" | column -c3 -s " " -t | sort -nr | nl |  #head -n10

alias node='./home/wiki/Documents/myDocuments/node-v0.12.2-linux-x64/bin/node'

alias apache='sudo /etc/init.d/apache2'
alias apache_restart='apache restart'
alias apache_stop='apache stop'
alias apache_start='apache start'

alias mango='/etc/init.d/mongodb'
alias mongo_restart='mango restart'
alias mongo_stop='mango stop'
alias mongo_start='mango start'
#guake -n guake -e 'mongo_restart' guake -r 'mongo' #to execute command mongo_restart in guake with tab named mongo



ANT_HOME=/usr/share/ant
export ANT_HOME

PATH=$ANT_HOME/bin:$PATH 
export PATH 

ANT_OPTS="-Xmx2224m -XX:MaxPermSize=3024m"
export ANT_OPTS
JAVA_OPTS="-Xmx2224m -XX:MaxPermSize=3024m"
export JAVA_OPTS


# Hadoop settings
HADOOP_HDFS_HOME=/home/wiki/hadoop/hadoop-hdfs-project/hadoop-hdfs/src/main
HADOOP_YARN_HOME=/home/wiki/hadoop/hadoop-yarn-project/hadoop-yarn
HADOOP_LIBEXEC_DIR=/home/wiki/hadoop/hadoop-hdfs-project/hadoop-hdfs-httpfs/src/main/libexec
export PATH=$PATH:$HADOOP_YARN_HOME/bin
export PATH=$PATH:$HADOOP_HDFS_HOME/bin
export PATH=$PATH:$HADOOP_LIBEXEC_DIR

export HADOOP_HOME=${HADOOP_HDFS_HOME}
export PATH=$PATH:$HADOOP_HOME/bin:$JAVA_PATH/bin:$HADOOP_HOME/sbin

export HADOOP_PREFIX=${HADOOP_HDFS_HOME}
export HADOOP_MAPRED_HOME=${HADOOP_HOME}
export HADOOP_COMMON_HOME=/home/wiki/hadoop/hadoop-common-project/hadoop-common/src/main/bin
export HADOOP_CONF_DIR=${HADOOP_HOME}/hadoop-common-project/hadoop-common/src/main/


# Always enable GREP colors
export GREP_OPTIONS='--color=auto'

# complete sudo and man-pages
complete -cf sudo man

# Reload aliases file
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi 

# Reload functions file
if [ -f ~/.bash_functions ]; then
    . ~/.bash_functions
fi

# Reload git alias file
if [ -f ~/.bash_git ]; then
    . ~/.bash_git
fi

# Reload git alias file
if [ -f ~/.bash_profile ]; then
    . ~/.bash_profile
fi
