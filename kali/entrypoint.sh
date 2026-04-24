#!/bin/bash
cat > /root/.bashrc << 'BASHRC'
force_color_prompt=yes
PS1='\[\033[1;31m\]┌──(\[\033[1;33m\]\u\[\033[1;34m\]㉿\[\033[1;32m\]\h\[\033[1;31m\])-[\[\033[0;37m\]\w\[\033[1;31m\]]\n\[\033[1;31m\]└─\[\033[1;34m\]#\[\033[0m\] '
alias ls='ls --color=auto'
alias ll='ls -la --color=auto'
alias grep='grep --color=auto'
export TERM=xterm-256color
BASHRC
source /root/.bashrc
exec /bin/bash
