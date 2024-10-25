export XSH_DOTDIR="$HOME"/.config/xsh
export ZSH_DOTDIR="$HOME"/.config/zsh

. "$XSH_DOTDIR"/.env

if [[ -f "$ZSH_DOTDIR"/.zshenv.local ]]; then
  . "$ZSH_DOTDIR"/.zshenv.local
fi