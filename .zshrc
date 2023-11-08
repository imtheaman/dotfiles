# Use powerline
USE_POWERLINE="true"
# Has weird character width
# Example:
#    is not a diamond
HAS_WIDECHARS="false"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

source ~/.profile
# pnpm
export PNPM_HOME="/home/thomas/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

alias f="fd --type f --hidden --exclude .git | fzf-tmux -p --reverse | xargs nvim"
alias home="cd ~"
alias nconf="nvim ~/.config/nvim"
alias zconf="nvim ~/.zshrc"
alias pconf="nvim ~/.profile"
alias xconf="nvim ~/.Xresources"
alias i3conf="nvim ~/.i3/config"
alias gall="git add ."
alias gs="git status"
alias gp="git push"
