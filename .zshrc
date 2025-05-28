# Autocomplete
autoload -Uz compinit
compinit
_comp_options+=(globdots)
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

unsetopt BEEP

# export PROMPT="%K{004} %1~%f %k%F{004}🭬%f "
export PROMPT="%F{cyan} %F{#006BA6}%~ %F{cyan}➤%f  "

export LANG=pt_BR.cp1252
export PATH=$PATH:/opt/android-sdk/platform-tools


# Shortcuts legacy Spaniol
alias cl='clear'
alias hx='helix'
alias pyp='PYTHONPATH=$(pwd) python'
alias py='python'
alias xp='xplr'
alias cdx='cd $(xplr)'
alias cpx='cp $(xplr) $(xplr)'
alias mvx='mv $(xplr) $(xplr)'
alias rmx='rm $(xplr)'
alias poff='poweroff'
alias rest='reboot'

# Shortcuts brunofs
alias qtdpkg='pacman -Qq | wc -l'
alias mine='cd /home/brunofs/core && java -jar mine.jar'
alias jc='javac'
alias j='java'
alias projects='cd ~/core/projetos/'
alias cell='cd ~/core/celulares/mia3'
alias p2='cd ~/core/fgv/cdia/p2'
alias sourcep='source venv/bin/activate'
alias p3='cd ~/core/fgv/cdia/p3'
alias down='echo o | sudo tee /proc/sysrq-trigger'
alias ls='exa -a'
alias shx='sudo HOME=$HOME helix'
alias jp='jupyter notebook'

alias menrank='sudo dmidecode --type memory'
alias mencl='sudo decode-dimms'


# Color
#alias ls='ls --color=auto'

