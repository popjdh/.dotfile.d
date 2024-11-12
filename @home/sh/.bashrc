# shellcheck shell=bash

export XSH_DOTDIR="$HOME"/.config/xsh
export BASH_DOTDIR="$HOME"/.config/bash

. "$BASH_DOTDIR"/.bashenv

[[ $- != *i* ]] && return

. "$XSH_DOTDIR"/.rc

for sub_rc in "$BASH_DOTDIR"/rc.d/*.rc; do
	if [[ -f "$sub_rc" ]]; then
		. "$sub_rc"
	fi
done
unset sub_rc

if [[ -f "$BASH_DOTDIR"/.bashrc.local ]]; then
	. "$BASH_DOTDIR"/.bashrc.local
fi
