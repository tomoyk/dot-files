# homebrew
export PATH=/usr/local:$PATH

# include Platform confs
for foo in {mac,linux}
do
  if [ -f ~/.bash_alias_$foo ]; then
      . ~/.bash_alias_$foo
  fi
done

# shortcuts
alias dck='docker'
alias ls='ls -F'
alias ll='ls -laF'
alias la='ls -aF'
alias lns='ln -s'
alias emacs='vim'
alias sl='ls'
alias l='ls'
alias suod='sudo'

# exiftools
alias exiftool='exiftool -lang ja'

# simple-shell
alias simple="export PS1='$ '"

# git
alias gpom='git push origin master'

# original Command
alias ports='netstat -antu | grep -i listen'

# color-panic
alias color-panic=':(){ echo printf\ \"\\e[{30..37}m\"\;sleep\ 1\;|bash;:&};:&'
alias color-clear='pgrep "\-bash" | xargs kill -9'

# work-dir
alias mkwdir='mkdir work_$(date +%Y%m%d); cd $_'

# docker
alias docker-trr='docker run -it --rm tomoyk/docker-trr'
alias docker-php="docker run --rm -p 8000:80 -v /Users/tkoyama/public_html:/var/www/html --name php7 -d php:7.0-apache"

# simple command
alias processing-die="ps aux|grep processing|awk '{print $2}'|xargs kill -9 "

# neovim
export XDG_CONFIG_HOME=$HOME/.config

# misc
alias ssh-raspi='ssh 10.203.10.102 -l pi'


