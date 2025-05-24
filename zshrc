# Customize Prompt(s)
PROMPT='
%1~ %L %# '

RPROMPT='%*'

# Function to change to repo directory and call git status

function gitstat() {
    cd ~/.dotfiles && git status
    }