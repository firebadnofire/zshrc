# BEGIN zsh data
# Syntax highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
ZSH_HIGHLIGHT_STYLES[suffix-alias]=fg=cyan,underline
ZSH_HIGHLIGHT_STYLES[precommand]=fg=cyan,underline
ZSH_HIGHLIGHT_STYLES[arg0]=fg=cyan
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
ZSH_HIGHLIGHT_PATTERNS=('rm -rf *' 'fg=white,bold,bg=red')
ZSH_HIGHLIGHT_PATTERNS=('chown -R * /' 'fg=white,bold,bg=red')
ZSH_HIGHLIGHT_PATTERNS=('chmod -R * /' 'fg=white,bold,bg=red')
# Auto Suggestions
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
# begin zsh options
setopt notify
setopt correct
setopt auto_cd
setopt auto_list
setopt append_history
setopt inc_append_history
setopt extended_history
export PROMPT='%B%F{green}%/>%b%f '
alias ls="ls -G"
echo Packages to upgrade:
/usr/sbin/pkg version | grep -v = | wc -l
alias list-updates="pkg version -vIL="
export EDITOR=/usr/local/bin/vim
alias f="find . -type f | fzy"
neofetch
