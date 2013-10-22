export PATH="/usr/local/bin:"$PATH:":/usr/local/sbin:/Users/gw/.gem/ruby/1.8:/Users/gw/.gem/ruby/2.0.0:/usr/local/Cellar/ruby/2.0.0-p247/lib/ruby/gems/2.0.0/gems"

# add virtualenv support
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_SCRIPT=/usr/local/bin/virtualenvwrapper.sh
source /usr/local/bin/virtualenvwrapper_lazy.sh

# add autoenv support
source ~/.autoenv/activate.sh

alias notebook='ipython notebook --pylab=inline --port=9999'

# {{{
# Node Completion - Auto-generated, do not touch.
shopt -s progcomp
for f in $(command ls ~/.node-completion); do
  f="$HOME/.node-completion/$f"
  test -f "$f" && . "$f"
done
# }}}
alias psql=/usr/local/pgsql-9.1/bin/psql

# Initialize the 'hop' script
 source /System/Library/Frameworks/Python.framework/Versions/2.7/hop/hop.bash
# Define an entry point for the lua script version of hop
alias hop-lua-script="LUA_PATH=/System/Library/Frameworks/Python.framework/Versions/2.7/hop/json.lua /System/Library/Frameworks/Python.framework/Versions/2.7/hop/hop.lua"

# Vagrant
alias vadd="vagrant box add"
alias vhalt="hagrant halt"
alias vpro="vagrant provision"
alias vssh="vagrant ssh"
alias vup="vagrant up --no-provision"

# Everyone needs a little color in their lives
RED='\[\033[31m\]'
GREEN='\[\033[32m\]'
YELLOW='\[\033[33m\]'
BLUE='\[\033[34m\]'
PURPLE='\[\033[35m\]'
CYAN='\[\033[36m\]'
WHITE='\[\033[37m\]'
GRAY="\[\033[1;30m\]"
NIL='\[\033[00m\]'

# Hostname styles
FULL='\H'
SHORT='\h'

# System => color/hostname map:
# UC: username color
# LC: location/cwd color
# HD: hostname display (\h vs \H)
# Defaults:
UC=$GREEN
LC=$WHITE
HD=$FULL

# Prompt function because PROMPT_COMMAND is awesome
function set_prompt() {
    # show the host only and be done with it.
    host="${UC}${HD}${NIL}"

    # Special vim-tab-like shortpath (~/folder/directory/foo => ~/f/d/foo)
    _pwd=`pwd | sed "s#$HOME#~#"`
    if [[ $_pwd == "~" ]]; then
       _dirname=$_pwd
    else
       _dirname=`dirname "$_pwd" `
        if [[ $_dirname == "/" ]]; then
              _dirname=""
        fi
       _dirname="$_dirname/`basename "$_pwd"`"
    fi
    path="${LC}${_dirname}${NIL}"
    myuser="${UC}\u@${NIL}"
    myuser=""

    _branch=$(git symbolic-ref HEAD 2>/dev/null)
    _branch=${_branch#refs/heads/} # apparently faster than sed
    branch="" # need this to clear it when we leave a repo
    if [[ -n $_branch ]]; then
       branch=" ${NIL}[${YELLOW}${_branch}${NIL}]"
    fi

    # Dollar/pound sign
    end="${LC}\$${NIL} "

    # Virtual Env
    if [[ $VIRTUAL_ENV != "" ]]
       then
           venv=" ${NIL}(${GREEN}${VIRTUAL_ENV##*/}${NIL})"
    else
       venv=''
    fi

    export PS1="» ${myuser}${path}${venv}${branch}\n${end}"
}

export PROMPT_COMMAND=set_prompt
