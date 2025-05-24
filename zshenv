echo 'Hello from .zshenv'

# checks if a command exists
# exists COMMAND_NAME && echo "yes" || echo "no" 
function exists() {
    command -v "$1" >/dev/null 2>&1
    # 'command -v' is similar to 'which' https://stackoverflow.com/a/677212/1341838
    # $1 is the parameter passed to the function
    # the output (file descriptor 1) is discarded by redirecting it to /dev/null
    # the error (file descriptor 2) is redirected to the same place
    # what is used to check if the command exists is the exit code of the command
    # if the command exists, the exit code is 0
    # if the command does not exist, the exit code is 1
    # More explicitly written:
    # command -v $1 1>/dev/null 2>/dev/null
}