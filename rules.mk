$(OUTPUT)%.html: %.md
	pandoc -s -S $^ --from markdown --to html5 -o $@
