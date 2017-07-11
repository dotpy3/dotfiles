# Path to your oh-my-zsh installation.
export ZSH=/Users/egourlao/.oh-my-zsh

ZSH_THEME="spaceship"
plugins=(git docker docker-compose)

source $ZSH/oh-my-zsh.sh

# Golang
export GOPATH="/Users/egourlao/code/golang"
export PATH="$PATH:$GOPATH/bin"

# RabbitMQ
export PATH="$PATH:/usr/local/sbin"

# Rust
export PATH="$PATH:/Users/egourlao/.cargo/bin"

# Snapcraft Docker
export PATH="$PATH:/usr/local/snapcraft-docker"

# Personal shortcuts
export CODE="/Users/egourlao/code"

# Transfer
transfer() { if [ $# -eq 0 ]; then echo "No arguments specified. Usage:\necho transfer /tmp/test.md\ncat /tmp/test.md | transfer test.md"; return 1; fi 
tmpfile=$( mktemp -t transferXXX ); if tty -s; then basefile=$(basename "$1" | sed -e 's/[^a-zA-Z0-9._-]/-/g'); curl --progress-bar --upload-file "$1" "https://transfer.sh/$basefile" >> $tmpfile; else curl --progress-bar --upload-file "-" "https://transfer.sh/$1" >> $tmpfile ; fi; cat $tmpfile; rm -f $tmpfile; } 

export NVM_DIR="/Users/egourlao/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# Autojump
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

# Oh My Zsh
source /usr/local/Cellar/antigen/*/share/antigen/antigen.zsh
antigen-use oh-my-zsh
antigen-bundle supercrabtree/k
antigen-apply

# Vim
export EDITOR=vim

# GPG
export GPG_TTY=$(tty)

# Raspberry Pi3 toolchain
export PATH="$PATH:$HOME/.toolchains/armv8-rpi3-linux-gnueabihf/bin"

# Docker Swarm alias
alias dsvce="docker service"

# AWS Autocompletion
source /usr/local/bin/aws_zsh_completer.sh

# Pretty JSON
alias prettyjson="python -m json.tool"

source "/Users/egourlao/.oh-my-zsh/custom/themes/spaceship.zsh-theme"
