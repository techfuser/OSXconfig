if [ -f ~/.git-completion.bash]; then
    source ~/.git-completion.bash # instead of 'source' you could also  use '.' 
fi

# export PS1="\h:\W \u\$" 
export PS1="\e[01;32m\h:\W \u\$ \e[00m"

export MONGO_PATH=/usr/local/mongodb
export EXPRESS_PATH=/usr/local/lib/node_modules/express

export PATH=$PATH:$MONGO_PATH/bin:$EXPRESS_PATH/lib
