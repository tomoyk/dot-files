# history
export HISTCONTROL=ignoredups 
export HISTIGNORE="ls*:history*:cd*"
export HISTSIZE=10000
HISTTIMEFORMAT='%Y%m%d %T';
export HISTTIMEFORMAT

# homebrew
export PATH="/usr/local/bin:$PATH"

# original path
export PATH="$HOME/bin:$PATH"

# PS1
export PS1="[\h:\w]$ "

# shortcut
alias dck='docker'
alias ls='ls -F'
alias ll='ls -laF'
alias la='ls -aF'
alias lns='ln -s'
alias emacs='vim'
alias tac='tail -r'
alias sl='ls'
alias l='ls'
alias cdb='cd $_'

# tools
alias exiftool='exiftool -lang ja'
alias exiftool-all='exiftool -lang ja -all='

# simple-shell
alias simple="export PS1='$ '"

# bash 4.4
shopt -s autocd
shopt -s cdspell

# go
# export GOPATH=$HOME/.go

# python
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
#eval "$(pyenv init -)"

# check sum
alias sha512sum='openssl dgst -sha512'
alias sha256sum='openssl dgst -sha256'
alias md5sum='md5'

# wireshark
alias wireshark='open -n /Applications/Wireshark.app/'

# work-dir
alias mkwdir='mkdir work_$(date +%Y%m%d); cd $_'

# docker 
alias docker-trr='docker run -it --rm tomoyk/docker-trr'
alias docker-php="docker run --rm -p 8000:80 -v /Users/tkoyama/public_html:/var/www/html --name php7 -d php:7.0-apache"

# nvim
export XDG_CONFIG_HOME=$HOME/.config

# myIP
alias ip='ifconfig -v en0'

# Git
alias gpom='git push origin master'

# linuxClub
alias ssh-raspi='ssh 10.203.10.102 -l pi'

# Added New VIM
alias vim='/usr/local/Cellar/vim/8.0.1150/bin/vim'

# Port status
alias ports='netstat -antu | grep -i listen'

# sudo
alias suod='sudo'

# lock
alias lock='/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend'

# python
alias py='python3'
