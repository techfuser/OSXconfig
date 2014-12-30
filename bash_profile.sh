# -----------------------------------------------------------------------------
# Filename: ~/.bash_profile
# Author: Ahsan, M
# Purpose: Customiz OS X terminal (with GIT)
# - git auto compltion
# - when in git repo, show branch name w/ prompt - PS1
# - terminal color
# - appended PATH (e.g., mongodb bin, expressjs lib location)
# References:
# - https://github.com/git/git/tree/master/contrib/completion
# -----------------------------------------------------------------------------

# load git auto-completion
if [ -f ~/.git-completion.bash ]; then
    source ~/.git-completion.bash # instead of 'source' you could also  use '.' 
fi

# load git branch info for the prompt. e.g., __git_ps1 
# used in customizing prompt string (PS1), so branch info is displayed /w  prompt
 if [ -f ~/.git-prompt.sh ]; then
    source ~/.git-prompt.sh  
 fi

# export PS1="\h:\W \u\$" 
# export PS1="\e[01;32m\h:\W \u\$ \e[00m"

gitbranch='$(__git_ps1 "(%s)")'
export PS1="$gitbranch \e[01;32m\h\n\W \u\$ \e[00m" # show promp with branch name

export CLICOLOR=1 # simply enables coloring in terminal
export LSCOLORS=ExFxBxDxCxegedabagacad  # specifies how to color specific items

# -----------------------------------------------------------------------------
export MONGO_PATH=/usr/local/mongodb
export EXPRESS_PATH=/usr/local/lib/node_modules/express

# append above to PATH
export PATH=$PATH:$MONGO_PATH/bin:$EXPRESS_PATH/lib

# -----------------------------------------------------------------------------
