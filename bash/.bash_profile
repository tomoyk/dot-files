##
# Terminal Settings
##

export PATH="/usr/local/bin:$PATH"
# export PATH="$HOME/bin:/Library/TeX/texbin/:$PATH"
# export PATH="/Users/tkoyama/Tools/google-cloud-sdk/bin:$PATH"

# PS1
export PS1="[\h:\w]$ "

# history
export HISTCONTROL=ignoredups 
export HISTIGNORE="ls*:history*:cd*"
export HISTSIZE=10000
HISTTIMEFORMAT='%Y%m%d %T ';
export HISTTIMEFORMAT

# neovim
export XDG_CONFIG_HOME=$HOME/.config

# bash 4.4
shopt -s autocd
shopt -s cdspell

# python
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"


##
# Original Aliases
##

# base
alias dck='docker'
alias ls='ls -F'
alias ll='ls -laF'
alias la='ls -aF'
alias lns='ln -s'
alias emacs='vim'
alias tac='tail -r'
alias sl='ls'
alias l='ls'
alias cdd='cd $_'
alias suod='sudo'
alias sud='sudo'
alias udo='sudo'

# overwrite
alias exiftool='exiftool -lang ja'
alias exiftool-all='exiftool -lang ja -all='

# short-tool 
alias simple="export PS1='$ '"
alias ports='netstat -antu | grep -i listen'
alias mkwdir='mkdir work_$(date +%Y%m%d); cd $_'
alias gpom='git push origin master'
alias py='python3'
alias jwhois="whois -h whois.jprs.jp"

# docker
alias docker-trr='docker run -it --rm tomoyk/docker-trr'
alias docker-php="docker run --rm -p 8000:80 -v ~/public_html:/var/www/html --name php7 -d php:7.0-apache"

# check sum
alias sha512sum='openssl dgst -sha512'
alias sha256sum='openssl dgst -sha256'
alias md5sum='md5'
