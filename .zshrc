USE_POWERLINE="true"
HAS_WIDECHARS="false"
source ~/.profile
export PNPM_HOME="/home/thomas/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

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
