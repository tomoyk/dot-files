# homebrew
export PATH=/usr/local:$PATH

# shortcut
alias dck='docker'
alias ls='ls -F'
alias ll='ls -laF'
alias la='ls -aF'
alias lns='ln -s'
alias emacs='vim'
alias sl='ls'
alias l='ls'

# tools
alias exiftool='exiftool -lang ja'

# byobu
alias clear-byobu="/usr/local/lib/byobu/include/tmux-detach-all-but-current-client"

# シェルでホスト名非表示
alias simple="export PS1='$ '"

# python
#export PYENV_ROOT="$HOME/.pyenv"
#export PATH="$PYENV_ROOT/bin:$PATH"
#eval "$(pyenv init -)"

# color-panic
alias color-panic=':(){ echo printf\ \"\\e[{30..37}m\"\;sleep\ 1\;|bash;:&};:&'
alias color-clear='pgrep "\-bash" | xargs kill -9'

# go
# export GOPATH=$HOME/.go

# check sum
alias sha512sum='openssl dgst -sha512'
alias sha256sum='openssl dgst -sha256'
alias md5sum='md5'

# work-dir
alias mkwdir='mkdir work_$(date +%Y%m%d); cd $_'

alias trr='docker run -it --rm tomoyk/docker-trr'

alias processing-die="ps aux|grep processing|awk '{print $2}'|xargs kill -9 "

# nvim
export XDG_CONFIG_HOME=$HOME/.config

# CS-SRV 
#ipaddr=$(curl -s http://srv1.cs.priv.teu.ac.jp/~c011712375/lcpi)
#if [ "$ipaddr" != "" ]
#then 
  # echo -e "Host lcpi\n  HostName $ipaddr\n  Port 22\n  User pi" > ~/.ssh/LCPI
  :
#fi 

# Git
alias gpom='git push origin master'

# seccamp
# alias ssh-camp="sudo ssh ssh2@153.127.215.149 -L 80:192.168.0.6:80 -L 5901:192.168.0.6:5902"
# alias cd-camp="cd /Users/tkoyama/Google\ ドライブ/seccamp2017"

# 
alias ssh-raspi='ssh 10.203.10.102 -l pi'

# Port status
alias ports='netstat -antu | grep -i listen'

# sudo
alias suod='sudo'

# docker 
alias docker-php="docker run --rm -p 8000:80 -v /Users/tkoyama/public_html:/var/www/html --name php7 -d php:7.0-apache"
