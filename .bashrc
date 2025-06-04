#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

alias set='~/.local/bin/setth.sh'

kitty @ --to /tmp/kitty set-colors --all --configured ~/.cache/wal/colors-kitty.conf 2>/dev/null
fastfetch
ls
