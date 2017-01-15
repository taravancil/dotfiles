source ~/git-prompt.sh

for file in ~/.{aliases,functions}; do
    [[ -r "$file" ]] && source "$file"
done
unset file

autoload -U colors && colors

setopt PROMPT_SUBST ;
PS1='%{$fg[blue]%}%c%{$fg[yellow]%}$(__git_ps1 " (%s)") %{$fg[black]%}$ '


nvm() {
    unset -f nvm
    export NVM_DIR=~/.nvm
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
    nvm "$@"
}

node() {
    unset -f node
    export NVM_DIR=~/.nvm
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
    node "$@"
}

npm() {
    unset -f npm
    export NVM_DIR=~/.nvm
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
    npm "$@"
}
