# termcap  
# ks       make the keypad send commands
# ke       make the keypad send digits
# vb       emit visual bell
# mb       start blink
# md       start bold
# me       turn off bold, blink and underline
# so       start standout (reverse video)
# se       stop standout
# us       start underline
# ue       stop underline

man() {
	env \
		LESS_TERMCAP_mb=$(printf "\e[1;34m") \
		LESS_TERMCAP_md=$(printf "\e[1;34m") \
		LESS_TERMCAP_me=$(printf "\e[0m") \
		LESS_TERMCAP_so=$(printf "\e[1;47;33m") \
		LESS_TERMCAP_se=$(printf "\e[0m") \
		LESS_TERMCAP_us=$(printf "\e[1;32m") \
		LESS_TERMCAP_ue=$(printf "\e[0m") \
		PAGER="${commands[less]:-$PAGER}" \
		man "$@"
}
