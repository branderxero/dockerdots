#█▓▒░ ascii art flair
echo '                   ##        .          ';
echo '             ## ## ##       ==          ';
echo '          ## ## ## ##      ===          ';
echo '      /""""""""""""""""\___/ ===        ';
echo ' ~~~ {~~ ~~~~ ~~~ ~~~~ ~~ ~ /  ===- ~~~ ';
echo '      \______ o          __/            ';
echo '        \    \        __/               ';
echo '         \____\______/                  ';
echo '                                        ';
echo '      ╺┳━┓ ┏━┓ ┏━╸ ╻┏  ┏━╸ ┏━┓          ';
echo '       ┃ ┃ ┃ ┃ ┃   ┣┻┓ ┣╸  ┣┳┛          ';
echo '      ╺┻━┛ ┗━┛ ┗━╸ ╹ ╹ ┗━╸ ╹┗╸          ';
echo '                                        ';

# aliases
alias ls="ls --color=auto"
alias lsla="ls -la --color=auto"
alias lsls="ls -la --color=auto"
alias lsl="ls -l --color=auto"
alias "cd.."="cd ../"
alias up="cd ../"
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias less='less -R'
alias vi='vim'
alias sprunge="curl -F 'sprunge=<-' http://sprunge.us"
alias errlog="echo '' > /var/www/error.log && echo '' > /var/www/access.log"

# Colorize grep
if echo hello|grep --color=auto l >/dev/null 2>&1; then
  export GREP_OPTIONS="--color=auto" GREP_COLOR="1;31"
fi

# Shell
export CLICOLOR="1"
# git prompt script http://git.io/p0UO
if [ -f $HOME/git-prompt.sh ]; then
  source $HOME/git-prompt.sh
  export GIT_PS1_SHOWDIRTYSTATE="1"
  export PS1="\[\e[0;124m\][\[\e[1;37m\]\$(pwd)\[\e[0;124m\]]\$(__git_ps1)\[\e[0;124m\]── - \[\e[1;37m\]"
else
  export PS1="\[\e[0;124m\][\[\e[1;37m\]\$(pwd)\[\e[0;124m\]]── - \[\e[1;37m\]"
fi
# export LS_COLORS="di=34:ln=35:so=32:pi=33:ex=1;40:bd=34;40:cd=34;40:su=0;40:sg=0;40:tw=0;40:ow=0;40:"

# Z
source $HOME/.scripts/z.sh
