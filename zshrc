echo "Hello from .zshrc"

# Set Variables
# Syntax highlighting for man pages using bat
export MANPAGER="sh -c 'sed -u -e \"s/\\x1B\[[0-9;]*m//g; s/.\\x08//g\" | bat -p -lman'"
# Only if you want to disable the gatekeeper for casks ("Sure to open file from the internet?")"
# export HOMEBREW_CASK_OPTS="--no-quarantine"
export NULLCMD="bat"
# 

# Change ZSH Options

# Create Aliases
alias zrc='nano ~/.zshrc && source ~/.zshrc'
alias l='eza -lahF --git --no-user --no-time --no-filesize' # or, without eza 'ls -lahF'
alias l1='eza -lahFTL=2  --git --no-user --no-time --no-filesize'
alias l2='eza -lahFTL=3  --git --no-user --no-time --no-filesize'
alias l3='eza -lahFTL=4  --git --no-user --no-time --no-filesize'
alias trail='<<<${(F)path}' # print path variable but each location on a new line
    # Using parameter expansion,apply the newline-separator option to the lowercase array version
    # of 'path' and redirect the result to standard output using hereword (the default for which
    # we've changed to bat above).zsh 
alias gs='git status -s'
alias gc='git commit'
alias gp='git push'
alias ssh3='ssh mitware@146.0.32.204'
alias ssh2='ssh mitware@mitware-server'
alias bmc="~/dotfiles/scripts/backup_script_cube.sh"

# define a named directory to use ~icloud instead of the long path
hash -d icloud="$HOME/Library/Mobile Documents/com~apple~CloudDocs"

# Customize Prompt(s)
PROMPT='
%1~ %L %# '

RPROMPT='%*'

# Add Locations to $path Array
# typeset -U path # avoid duplicates in path
# path=(
# #    Add VSC code command (I just did it in VSC)
#    $path
#    "/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
# "/Users/bao/.dotnet/tools"
# )

# Write Handy Functions
function mkcd() {
  mkdir -p "$@" && cd "$_";
}
