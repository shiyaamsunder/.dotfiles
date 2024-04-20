# run bash_aliases if it is present
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi


export PATH=~/.local/bin:$PATH
export PATH=$PATH:~/programs/maven/bin

export FZF_DEFAULT_COMMAND='rg --files'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
