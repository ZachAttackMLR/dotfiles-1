# .zprofile
# Aaron Lichtman

OS="$(uname -s)"

#########
# Editors
#########

export EDITOR='nvim'
export VISUAL='nvim'
export VIMCONFIG='$HOME/.config/nvim'


#####
# XDG
#####

export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"

#######################
# Directories and Files
#######################

export GRIPHOME=$HOME/.config/grip
export WAKATIME_HOME=$HOME/.config/wakatime
export MPLCONFIGDIR=$HOME/.config/matplotlib
export PYLINTRC=$HOME/.pylintrc
export ZSH=$HOME/.oh-my-zsh
export _Z_DATA=$HOME/.cache/.z
export GOPATH=$HOME/go
export PYENV_ROOT=/usr/local/var/pyenv
export LESSHISTFILE=$HOME/.cache/lesshst
export NODE_REPL_HISTORY=$HOME/.cache/node_repl_history

##############
# gcc / OS-Dev
##############

export CC=/usr/local/bin/gcc-9
export LD=/usr/local/bin/gcc-9

export OS_DEV_PREFIX="/Users/alichtman/bin/i386elfgcc"
export TARGET=i386-elf
export PATH="$OS_DEV_PREFIX/bin:$PATH"

#######
# pyenv
#######

# If pyenv is on PATH, load it and set the python interpreter version.
if hash pyenv; then
    eval "$(pyenv init -)"
    pyenv global 3.8.1
fi

######
# PATH
######

export PATH="$PATH:$HOME/.poetry/bin"
export PATH="$PATH:/usr/local/opt/openssl/bin"
export PATH="$PATH:/usr/local/opt/llvm/bin"
export PATH="$PATH:$HOME/.cargo/bin"
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:/usr/local/bin"
export PATH="$PATH:/sbin"
export PATH="$PATH:/usr/local"
export PATH="$PATH:/usr/sbin"
export PATH="$PATH:/usr/local/sbin"
export PATH="$PATH:/usr/local/Cellar/john-jumbo/1.8.0/share/john"
export PATH="$PATH:$HOME/.local/share/radare2/prefix/bin"
export PATH="$PATH:/Applications/VMware Fusion.app/Contents/Library"
export PATH="$PATH:/usr/local/Cellar/node/13.11.0/bin"
export PATH="$PATH:$HOME/Library/Python/3.7/bin"
export PATH="$PATH:$GOPATH/bin"
export PATH="/usr/local/opt/gnu-getopt/bin:$PATH"

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ]; then
  PATH="$HOME/bin:$PATH"
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$HOME/.rvm/bin:$PATH"

# Deduplicate entries in PATH
typeset -U PATH
export PATH

# GNU-getopt

if [ $OS = "Darwin" ]; then
    export FLAGS_GETOPT_CMD="$(brew --prefix gnu-getopt)/bin/getopt"
fi

# vim: ts=4 sw=4 tw=0 et ft=zsh :
