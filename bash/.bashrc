PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function

# ===================================================================================
# Constants
# ===================================================================================
# {
    # Reset
    Color_Off="\[\033[0m\]"       # Text Reset

    # Regular Colors
    Black="\[\033[0;30m\]"        # Black
    Red="\[\033[0;31m\]"          # Red
    Green="\[\033[0;32m\]"        # Green
    Yellow="\[\033[0;33m\]"       # Yellow
    Blue="\[\033[0;34m\]"         # Blue
    Purple="\[\033[0;35m\]"       # Purple
    Cyan="\[\033[0;36m\]"         # Cyan
    White="\[\033[0;37m\]"        # White

    # Bold
    BBlack="\[\033[1;30m\]"       # Black
    BRed="\[\033[1;31m\]"         # Red
    BGreen="\[\033[1;32m\]"       # Green
    BYellow="\[\033[1;33m\]"      # Yellow
    BBlue="\[\033[1;34m\]"        # Blue
    BPurple="\[\033[1;35m\]"      # Purple
    BCyan="\[\033[1;36m\]"        # Cyan
    BWhite="\[\033[1;37m\]"       # White

    # Underline
    UBlack="\[\033[4;30m\]"       # Black
    URed="\[\033[4;31m\]"         # Red
    UGreen="\[\033[4;32m\]"       # Green
    UYellow="\[\033[4;33m\]"      # Yellow
    UBlue="\[\033[4;34m\]"        # Blue
    UPurple="\[\033[4;35m\]"      # Purple
    UCyan="\[\033[4;36m\]"        # Cyan
    UWhite="\[\033[4;37m\]"       # White

    # Background
    On_Black="\[\033[40m\]"       # Black
    On_Red="\[\033[41m\]"         # Red
    On_Green="\[\033[42m\]"       # Green
    On_Yellow="\[\033[43m\]"      # Yellow
    On_Blue="\[\033[44m\]"        # Blue
    On_Purple="\[\033[45m\]"      # Purple
    On_Cyan="\[\033[46m\]"        # Cyan
    On_White="\[\033[47m\]"       # White

    # High Intensty
    IBlack="\[\033[0;90m\]"       # Black
    IRed="\[\033[0;91m\]"         # Red
    IGreen="\[\033[0;92m\]"       # Green
    IYellow="\[\033[0;93m\]"      # Yellow
    IBlue="\[\033[0;94m\]"        # Blue
    IPurple="\[\033[0;95m\]"      # Purple
    ICyan="\[\033[0;96m\]"        # Cyan
    IWhite="\[\033[0;97m\]"       # White

    # Bold High Intensty
    BIBlack="\[\033[1;90m\]"      # Black
    BIRed="\[\033[1;91m\]"        # Red
    BIGreen="\[\033[1;92m\]"      # Green
    BIYellow="\[\033[1;93m\]"     # Yellow
    BIBlue="\[\033[1;94m\]"       # Blue
    BIPurple="\[\033[1;95m\]"     # Purple
    BICyan="\[\033[1;96m\]"       # Cyan
    BIWhite="\[\033[1;97m\]"      # White

    # High Intensty backgrounds
    On_IBlack="\[\033[0;100m\]"   # Black
    On_IRed="\[\033[0;101m\]"     # Red
    On_IGreen="\[\033[0;102m\]"   # Green
    On_IYellow="\[\033[0;103m\]"  # Yellow
    On_IBlue="\[\033[0;104m\]"    # Blue
    On_IPurple="\[\033[10;95m\]"  # Purple
    On_ICyan="\[\033[0;106m\]"    # Cyan
    On_IWhite="\[\033[0;107m\]"   # White

    # Various variables you might want for your PS1 prompt instead
    Date="\d"
    Time12h="\T"
    Time12a="\@"
    PathShort="\w"
    PathFull="\W"
    NewLine="\n"
    User="\u"
    Host="\h"
    Jobs="\j"
    Last_Command="Last command returned ERROR!"

# }

# ===================================================================================
# PROMPT
# ===================================================================================
# {

    # https://raw.github.com/git/git/master/contrib/completion/git-prompt.sh
    # Load in the git branch prompt script.
    # {
        # GIT_PS1_SHOWUPSTREAM="auto"
        # GIT_PS1_SHOWCOLORHINTS="yes"
        # source ~/dibayendu/repositories/dotfiles/bash/.git-prompt.sh

        # uncomment only one of the two lines below
        # export PROMPT_COMMAND='__git_ps1 "\u@\h:\W" "\\\$ ";'
        # PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
    # }

    # https://github.com/djl/vcprompt/blob/master/bin/vcprompt
    # look into the above url for more info
    # {
        # export PS1="\u@\h:\w \$(vcprompt %s:%b:%m:%u:r)\$"
    # }

    # https://github.com/magicmonty/bash-git-prompt
    # The command below shows a prompt which contains git branch and other git info
    # {
        # source ~/dibayendu/repositories/dotfiles/bash/gitprompt.sh
    # }

    # this is from powerline for bash
    # . /Users/fridaymedia/powerline/powerline/bindings/bash/powerline.sh

    # The command below shows only the git branch
    PS1="$NewLine$Purple\[\342\224\214\342\224\200\]\$([[ \$? != 0 ]] && echo \"$Color_Off [$Color_Off$On_Red\[\342\234\227\] $Last_Command$Color_Off]\") $Cyan$Date $Red- $Purple$Time12h $Yellow$User$BRed@$Green$Host $Cyan[$Color_Off$On_IBlack\$(git branch 2>/dev/null | grep '^*' | colrm 1 2)$Cyan]$NewLine$Purple\[\342\224\224\]> $Red[$Color_Off$On_Blue$PathShort$Red] $Color_Off\$ "

    # PS1="$NewLine$Purple\[\342\224\214\342\224\200\]\$([[ \$? != 0 ]] && echo \"$Color_Off [$On_IRed\[\342\234\227\] $Last_Command$Color_Off]\") $Cyan$Date $Red- $Purple$Time12h $Yellow$User$BRed@$Green$Host $Cyan[$On_IBlack\$(git branch 2>/dev/null | grep '^*' | colrm 1 2)$Cyan]$NewLine$Purple\[\342\224\224\]> $Red[$On_IBlue$PathShort$Red] $Color_Off\$ "

    # https://bbs.archlinux.org/viewtopic.php?pid=1068202#p1068202
    # PS1="\[\033[0;37m\]\342\224\214\342\224\200\$([[ \$? != 0 ]] && echo \"[\[\033[0;31m\]\342\234\227\[\033[0;37m\]]\342\224\200\")[$(if [[ ${EUID} == 0 ]]; then echo '\[\033[0;31m\]\h'; else echo '\[\033[0;33m\]\u\[\033[0;37m\]@\[\033[0;96m\]\h'; fi)\[\033[0;37m\]]\342\224\200[\[\033[0;32m\]\w\[\033[0;37m\]]\n\[\033[0;37m\]\342\224\224\342\224\200\342\224\200\342\225\274 \[\033[0m\]"

    # PS1="$NewLine$Date $Red- $Purple$Time12h $Yellow$User$BRed@$Green$Host $Red[$Color_Off$PathShort$Red] $Cyan($Red\$(git branch 2>/dev/null | grep '^*' | colrm 1 2)$Cyan)$NewLine\$$Color_Off "
    # PS1="\[\033[1;32m\]\d \t\[\033[0m\]\[\033[1;31m\]@\[\033[0m\]\[\033[1;35m\][\w]\[\033[0m\]\[\033[0;36m\]\$(git branch 2>/dev/null | grep '^*' | colrm 1 2)\n\$\[\033[0m\] "
    # PS1="\[\033[1;32m\]\d \t\[\033[0m\]\[\033[1;31m\]@\[\033[0m\]\[\033[1;35m\][\w]\[\033[0m\]"

# }


# ===================================================================================
# directories shortcut using marks
# ===================================================================================
# {
    export MARKPATH=$HOME/.marks
    function jump { 
        cd -P $MARKPATH/$1 2>/dev/null || echo "No such mark: $1"
    }
    function mark { 
        mkdir -p $MARKPATH; ln -s $(pwd) $MARKPATH/$1
    }
    function unmark { 
        rm -i $MARKPATH/$1 
    }
    function marks {
        ls -l $MARKPATH | sed 's/  / /g' | cut -d' ' -f9- | sed 's/ -/ -/g' && echo
    }
# }

# ===================================================================================
# Basic Settings
# ===================================================================================
# {
    export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
    stty -ixon -ixoff
        #osx color terminal
        # export CLICOLOR=1
    # don't put duplicate lines in the history. See bash(1) for more options
    # don't overwrite GNU Midnight Commander's setting of `ignorespace'.
    HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups
    # ... or force ignoredups and ignorespace
    HISTCONTROL=ignoreboth

    # append to the history file, don't overwrite it
    shopt -s histappend
    # check the window size after each command and, if necessary,
    # update the values of LINES and COLUMNS.
    shopt -s checkwinsize

    PYTHONSTARTUP=~/.pythonrc.py
    export PYTHONSTARTUP

    # the line below evaluates fash for directory searching
        fasd_cache="$HOME/.fasd-init-bash"
        if [ "$(command -v fasd)" -nt "$fasd_cache" -o ! -s "$fasd_cache" ]; then
            fasd --init posix-alias bash-hook bash-ccomp bash-ccomp-install >| "$fasd_cache"
        fi
        source "$fasd_cache"
        unset fasd_cache

    # tmux copy in clipboard
    # {
        # while true; do
        # if test -n "`tmux showb 2> /dev/null`"; then
        #     tmux saveb -|pbcopy && tmux deleteb
        # fi
        # sleep 0.5
        # done
    # }
# }

# ===================================================================================
# Alias
# ===================================================================================
# {

    ## Modified commands 
    # {
        alias diff='colordiff'              # requires colordiff package
        # alias grep='grep --color=auto'
        # alias more='less'
        # alias df='df -h'
        # alias du='du -c -h'
        # alias mkdir='mkdir -p -v'
        # alias nano='nano -w'
        # alias ping='ping -c 5'
    # }

    ## New commands 
    # {
        # alias da='date "+%A, %B %d, %Y [%T]"'
        # alias du1='du --max-depth=1'
        # alias hist='history | grep'         # requires an argument
        # alias openports='ss --all --numeric --processes --ipv4 --ipv6'
        # alias pgg='ps -Af | grep'           # requires an argument
        # alias ..='cd ..'
    # }

    # Privileged access
    # if [ $UID -ne 0 ]; then
    #     alias sudo='sudo '
    #     alias scat='sudo cat'
    #     alias svim='sudoedit'
    #     alias root='sudo -s'
    #     alias reboot='sudo systemctl reboot'
    #     alias poweroff='sudo systemctl poweroff'
    #     alias update='sudo pacman -Su'
    #     alias netctl='sudo netctl'
    # fi

    ## ls 
    # {
        alias l='ls -la -Grlt'
        # alias ls='ls -hF --color=auto'
        alias ls='ls -G'
        alias lr='ls -R'                    # recursive ls
        alias ll='ls -l'
        alias la='ll -A'
        alias lx='ll -BX'                   # sort by extension
        alias lz='ll -rS'                   # sort by size
        alias lt='ll -rt'                   # sort by date
        alias lm='la | more'
    # }

    ## Safety features 
    # {
        alias cp='cp -i'
        alias mv='mv -i'
        # alias rm='rm -I'                    # 'rm -i' prompts for every file
        alias rm='rm -i'
        # safer alternative w/ timeout, not stored in history
        # alias rm=' timeout 3 rm -Iv --one-file-system'
        # alias ln='ln -i'
        # alias chown='chown --preserve-root'
        # alias chmod='chmod --preserve-root'
        # alias chgrp='chgrp --preserve-root'
        # alias cls=' echo -ne "\033c"'       # clear screen for real (it does not work in Terminology)
    # }

    ## Make Bash error tolerant 
    # {
        alias :q=' exit'
        alias :Q=' exit'
        alias :x=' exit'
        alias cd..='cd ..'
    # }

    ## Pacman aliases 
    # {
        #if necessary, replace 'pacman' with your favorite AUR helper and adapt the commands accordingly
        # alias pac="sudo /usr/bin/pacman -S"		# default action	- install one or more packages
        # alias pacu="/usr/bin/pacman -Syu"		# '[u]pdate'		- upgrade all packages to their newest version
        # alias pacr="sudo /usr/bin/pacman -Rs"		# '[r]emove'		- uninstall one or more packages
        # alias pacs="/usr/bin/pacman -Ss"		# '[s]earch'		- search for a package using one or more keywords
        # alias paci="/usr/bin/pacman -Si"		# '[i]nfo'		- show information about a package
        # alias paclo="/usr/bin/pacman -Qdt"		# '[l]ist [o]rphans'	- list all packages which are orphaned
        # alias pacc="sudo /usr/bin/pacman -Scc"		# '[c]lean cache'	- delete all not currently installed package files
        # alias paclf="/usr/bin/pacman -Ql"		# '[l]ist [f]iles'	- list all files installed by a given package
        # alias pacexpl="/usr/bin/pacman -D --asexp"	# 'mark as [expl]icit'	- mark one or more packages as explicitly installed 
        # alias pacimpl="/usr/bin/pacman -D --asdep"	# 'mark as [impl]icit'	- mark one or more packages as non explicitly installed

        # '[r]emove [o]rphans' - recursively remove ALL orphaned packages
        # alias pacro="/usr/bin/pacman -Qtdq > /dev/null && sudo /usr/bin/pacman -Rs \$(/usr/bin/pacman -Qtdq | sed -e ':a;N;$!ba;s/\n/ /g')"
    # }

    alias tmux_copy_keys=' tmux list-keys -t vi-copy'
    alias find='find . -name'
    alias readonly_vim='vim -R -M'
    # alias vim='vim -u ~/dibayendu/repositories/dotfiles/vim/.vimrc.basic'
    alias vim='vim -u ~/dibayendu/repositories/dotfiles/vim/.vimrc'
    alias vim_ide='vim -u ~/dibayendu/repositories/dotfiles/vim/.vimrc'
    alias c='clear'
    alias php_error='tail -f /Applications/MAMP/logs/php_error.log & '
    alias apache_error='tail -f /Applications/MAMP/logs/apache_error.log & '
    alias mysql_error='tail -f /Applications/MAMP/logs/mysql_error_log.err & '
    alias mt='mount -w -t smbfs //friday:fridaymedia@friday-server/www //Users/fridaymedia/projects/drives/'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'

    #go to do-putter project
    alias dot-putter='cd ~/projects/php/dot-putter'

    ## Use a long listing format ##
    alias ll='ls -la'
    
    ## Show hidden files ##
    alias l.='ls -d .* --color=auto'

    ## a quick way to get out of current directory ##
    alias ..='cd ..'
    alias ...='cd ../../../'
    alias ....='cd ../../../../'
    alias .....='cd ../../../../'
    alias .4='cd ../../../../'
    alias .5='cd ../../../../..'

    # handy short cuts #
    alias h='history'
    alias j='jobs -l'

    alias edit='vim'

    ## pass options to free ## 
    alias meminfo='free -m -l -t'
    
    ## get top process eating memory
    alias psmem='ps auxf | sort -nr -k 4'
    alias psmem10='ps auxf | sort -nr -k 4 | head -10'
    
    ## get top process eating cpu ##
    alias pscpu='ps auxf | sort -nr -k 3'
    alias pscpu10='ps auxf | sort -nr -k 3 | head -10'
    
    ## Get server cpu info ##
    alias cpuinfo='lscpu'
    
    ## older system use /proc/cpuinfo ##
    ##alias cpuinfo='less /proc/cpuinfo' ##
    
    ## get GPU ram on desktop / laptop## 
    alias gpumeminfo='grep -i --color memory /var/log/Xorg.0.log'

# }
