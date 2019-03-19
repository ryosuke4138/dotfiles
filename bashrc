#       ___           ___           ___           ___           ___           ___
#      /¥  ¥         /¥  ¥         /¥  ¥         /¥__¥         /¥  ¥         /¥  ¥
#     /::¥  ¥       /::¥  ¥       /::¥  ¥       /:/  /        /::¥  ¥       /::¥  ¥
#    /:/¥:¥  ¥     /:/¥:¥  ¥     /:/¥ ¥  ¥     /:/__/        /:/¥:¥  ¥     /:/¥:¥  ¥
#   /::¥‾¥:¥__¥   /::¥‾¥:¥  ¥   _¥:¥‾¥ ¥  ¥   /::¥  ¥ ___   /::¥‾¥:¥  ¥   /:/  ¥:¥  ¥
#  /:/¥:¥ ¥:|__| /:/¥:¥ ¥:¥__¥ /¥ ¥:¥ ¥ ¥__¥ /:/¥:¥  /¥__¥ /:/¥:¥ ¥:¥__¥ /:/__/ ¥:¥__¥
#  ¥:¥‾¥:¥/:/  / ¥/__¥:¥/:/  / ¥:¥ ¥:¥ ¥/__/ ¥/__¥:¥/:/  / ¥/_|::¥/:/  / ¥:¥  ¥  ¥/__/
#   ¥:¥ ¥::/  /       ¥::/  /   ¥:¥ ¥:¥__¥        ¥::/  /     |:|::/  /   ¥:¥  ¥
#    ¥:¥/:/  /        /:/  /     ¥:¥/:/  /        /:/  /      |:|¥/__/     ¥:¥  ¥
#     ¥::/__/        /:/  /       ¥::/  /        /:/  /       |:|  |        ¥:¥__¥
#      ‾‾            ¥/__/         ¥/__/         ¥/__/         ¥|__|         ¥/__/
#


 # PS1="${yellow}ﾈ $blue¥W$magenta¥$(ps1_branch)¥n$yellow¥$$reset "
export PS1='\[\e[1;34m\][\u@\h \W]\$\[\e[0m\] '

# Set terminal colors when launching screen
alias tmux="TERM=screen-256color-bce tmux"

# lazy alias
alias c='clear'
alias my='mv -i'
alias cp='cp -i'
alias jp='jupyter notebook &'
alias vs='open /Applications/visualstudiocode.app/'
alias vi='nvim'
#ls
alias ll='ls -l -G'
alias ls='ls -G'
export LSCOLORS=GxfxcxdxFxegedabagacad

# Change Directory
alias de='cd ~/Desktop'
alias do='cd ~/Documents'
alias ..='cd ..'
alias dl='cd ~/Downloads'
alias i='cd /Users/r.o./Library/Mobile\ Documents/com~apple~CloudDocs'

# Open
alias li='open /Applications/LINE.app/'
alias word="open /Applications/word.app/"
alias karabiner='open /Applications/Karabiner-Elements.app/'
alias od='open /Applications/OneDrive.app/'
alias excel="open //Applications/excel.app/"
alias sk='open /Applications/Slack.app/'
alias nt='open /Applications/Notes.app/'
alias en='open /Applications/Evernote.app/'
alias sp="open /Applications/sp/"
alias pp="open /Applications/powerpoint.app/"
alias pv="open /Applications/Preview.app/"
alias am="open /Applications/amazon_music.app/"
alias .="open ."

#URL Open
alias train='open https://transit.yahoo.co.jp/'
alias mwd='open https://my.waseda.jp/'
alias ng='open https://www.nationalgeographic.com/'
alias sa='open https://www.scientificamerican.com//'
alias dna='open https://www.rarejob.com/dna/'

alias tree='tree -NC -l "*.svn*" .'

# for postgreSQL to login as postgre
# alias psql='psql -U postgres -h localhost -W'
# --------------------------------------
# Google search from terminal
# --------------------------------------
ggl(){
    if [ $(echo $1 | egrep "^-[cfs]$") ]; then
        local opt="$1"
        shift
    fi
    local url="https://www.google.co.jp/search?q=${*// /+}"
    local app="/Applications"
    local g="${app}/Google Chrome.app"
    local f="${app}/Firefox.app"
    local s="${app}/Safari.app"
    case ${opt} in
        "-g")   open "${url}" -a "$g";;
        "-f")   open "${url}" -a "$f";;
        "-s")   open "${url}" -a "$s";;
        *)      open "${url}";;
    esac
}

# add a blank line after each output
function add_line {
  if [[ -z "${PS1_NEWLINE_LOGIN}" ]]; then
    PS1_NEWLINE_LOGIN = true
  else
    printf '\n'
  fi
}

PROMPT_COMMAND='add_line'

# --------------------------------------
#for bash_completion
# --------------------------------------
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  source $(brew --prefix)/etc/bash_completion
fi


