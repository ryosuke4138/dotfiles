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

#  when a shell starts first, tmux do, too
#if [ $SHLVL = 1 ]; then
#  tmux
#fi
# メモ帳の設定
function sr () {
    nvim --cmd 'cd ~/Scratches' ~/Scratches/`srf $1`
}

function srf () {
    echo `date +%F``echo $1 | sed 's/^\(.\)/-\1/'`.md
}

# PS1="${yellow}ﾈ $blue¥W$magenta¥$(ps1_branch)¥n$yellow¥$$reset "
source ~/dotfiles/git-prompt.sh
source ~/dotfiles/.git-completion.bash
source /Library/Developer/CommandLineTools/usr/share/git-core/git-completion.bash
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
git config --global alias.unstage 'reset HEAD --'
git config --global alias.last 'log -1 HEAD' #直近のcommitの情報を見る

# Set terminal colors when launching screen
alias tmux="TERM=screen-256color tmux"

alias c='clear'
alias my='mv -i'
alias cp='cp -i'
alias jp='jupyter notebook &'
alias vi='nvim'
alias relogin='exec $SHELL -l'

#ls
alias ls='lsd -F'

# Change Directory
alias ..='cd ..'
alias do='cd ~/Documents'
alias dl='cd ~/Downloads'
alias i='cd /Users/r.o./Library/Mobile\ Documents/com~apple~CloudDocs'

# Open app with alias
alias li='open /Applications/LINE.app/'
alias word="open /Applications/word.app/"
alias excel="open /Applications/excel.app/"
alias slack='open /Applications/Slack.app/'
alias nt='open /Applications/Notes.app/'
alias pv="open /Applications/Preview.app/"
alias .="open ."

#URL Open
alias train='open https://transit.yahoo.co.jp/'
alias mwd='open https://my.waseda.jp/'

# for postgreSQL to login as postgre
# alias psql='psql -U postgres -h localhost -W'

# --------------------------------------
# Google search from terminal
# --------------------------------------
alias gg='open -a google\ chrome'
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
    printf '\n'
}
PROMPT_COMMAND='add_line'

# --------------------------------------
#for bash_completion
# --------------------------------------
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  source $(brew --prefix)/etc/bash_completion
fi

export PS1='\[\033[1;31m\]\w\[\033[1;39m\]\n$
if type __git_ps1 > /dev/null 2>&1 ; then
    PROMPT_COMMAND="__git_ps1 '\W' ' \\\$ '; $PROMPT_COMMAND"
    GIT_PS1_SHOWDIRTYSTATE=true
    GIT_PS1_SHOWSTASHSTATE=true
    GIT_PS1_SHOWUNTRACKEDFILES=true
    GIT_PS1_SHOWUPSTREAM="auto"
    GIT_PS1_SHOWCOLORHINTS=true
fi
$(__git_ps1)\[\033[01m\] \$ '

# display git branch on bash prompt
# export PS1='\[\033[1;34m\]\w\[\033[1;39m\]\n$(__git_ps1)\[\033[00m\] \$ '
export PS1='\[\033[1;34m\]\w\[\033[1;39m\]\n\[\033[33m\]$(__git_ps1)\[\033[00m\] \$ '

# go to home directory when start bash
cd

# cuda
export PATH="/Developer/NVIDIA/CUDA-9.2/bin:$PATH"
export DYLD_LIBRARY_PATH="/Developer/NVIDIA/CUDA-9.2/lib:$DYLD_LIBRARY_PATH"


# java
export JAVA_TOOL_OPTIONS=-Dfile.encoding=utf8

# Google Translation API
export GOOGLE_APPLICATION_CREDENTIALS="/Users/r.o./Documents/pluszero/shueisha/My First Project-0c37b7813938.json"

#spark
export SPARK_HOME=/usr/local/spark/spark-1.6.2-bin-hadoop2.6
export PATH=$PATH:$SPARK_HOME/bin
#jupyter spark
export PYSPARK_PYTHON=$PYENV_ROOT/shims/python #環境に合わせてパスを合わせること
export PYSPARK_DRIVER_PYTHON=$PYENV_ROOT/shims/jupyter
export PYSPARK_DRIVER_PYTHON_OPTS="notebook"

# export http_proxy=http://proxy.hoge:8080
# export HTTP_PROXY=$http_proxy
# export https_proxy=$http_proxy
# export HTTPS_PROXY=$http_proxy
# export ftp_proxy=$http_proxy
# export FTP_PROXY=$http_proxy
# export no_proxy=.local,localhost,127.0.0.1
# export use_proxy=yes
export http_proxy=
export https_proxy=
export ftp_proxy=
use_proxy=
FTP_PROXY=
HTTPS_PROXY=
no_proxy=
HTTP_PROXY=

# # brewでインストールしたtexのpath
export PATH=/Library/TeX/texbin:${PATH}
