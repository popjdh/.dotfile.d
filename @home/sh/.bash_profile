# shellcheck shell=bash

export XSH_DOTDIR="$HOME"/.config/xsh
export BASH_DOTDIR="$HOME"/.config/bash

. ~/.bashrc

if [[ -f "$BASH_DOTDIR"/.bash_profile.local ]]; then
    . "$BASH_DOTDIR"/.bash_profile.local
fi