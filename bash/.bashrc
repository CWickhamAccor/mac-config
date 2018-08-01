source ~/Documents/AccorHotels/ssh/wip_key_management.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"

alias accor='cd ~/Documents/AccorHotels/'
alias home='cd ~/'

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/base16-material.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

# ============================================
# 3. MAKE TERMINAL A BETTER WORLD
# ============================================
# ========= Prompt & Colors ===========
export CLICOLOR=1
PS1_DEFAULT="\[\033[32m\]\w\[\033[m\]\$ "
PS1_GIT="(\$(git branch 2>/dev/null | grep '^*' | colrm 1 2))"
PS1_END="\$ "
export PS1=$PS1_DEFAULT$PS1_GIT$PS1_END
export PS2="continue-> "
export PS4='\[\e[35m\]$0-l.$LINENO:\[\e[m\]  '
