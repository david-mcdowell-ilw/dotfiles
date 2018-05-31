# .bash_aliases

# User specific aliases and functions
alias beeline="beeline -u jdbc:hive2:// -i ${HOME}/.hiverc --showWarnings=false --silent=true --color=true"
alias c='clear'
alias del='rm -I'
alias df='df -H'
alias h='history | sed "s/^\s*[0-9]*\s*//g"'
alias ll='ls -alh'
alias vi='vim'
alias view='vi -R'
alias wget='wget -c'
alias ..='cd ..'
alias ,,='cd ../..'

function cd()
{
    TARGET_PATH="$1"
    if [ -z "$1" ]; then
        TARGET_PATH="$HOME"
    fi
    command cd "$TARGET_PATH"
    ls
}
