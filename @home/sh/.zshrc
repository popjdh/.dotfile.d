[[ $- != *i* ]] && return

. "$XSH_DOTDIR"/.rc

for sub_rc in "$ZSH_DOTDIR"/rc.d/*.rc; do
	if [ -f "$sub_rc" ]; then
		. "$sub_rc"
	fi
done
unset sub_rc

if [[ -f "$ZSH_DOTDIR"/.zshrc.local ]]; then
	. "$ZSH_DOTDIR"/.zshrc.local
fi