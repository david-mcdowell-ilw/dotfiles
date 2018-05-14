# .bash_aliases

# User specific aliases and functions
alias vi='vim'
alias h='history | sed "s/^\s*[0-9]*\s*//g"'
alias c='clear'
alias ll='ls -alh'
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
