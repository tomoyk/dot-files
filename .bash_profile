# homebrew
export PATH=/usr/local:$PATH

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

# tools
alias exiftool='exiftool -lang ja'

# byobu
alias clear-byobu="/usr/local/lib/byobu/include/tmux-detach-all-but-current-client"

# シェルでホスト名非表示
alias simple="export PS1='$ '"

# python
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# color-panic
alias color-panic=':(){ echo printf\ \"\\e[{30..37}m\"\;sleep\ 1\;|bash;:&};:&'
alias color-clear='pgrep "\-bash" | xargs kill -9'

# go
export GOPATH=$HOME/.go

# check sum
alias sha512sum='openssl dgst -sha512'
alias sha256sum='openssl dgst -sha256'
alias md5sum='md5'

# wireshark
alias wireshark='open -n /Applications/Wireshark.app/'

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

# myIP
alias ip='ifconfig -v en0'
