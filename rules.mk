$(OUTPUT)%.html: %.md
	pandoc -s $^ --from markdown+smart --to html5 -o $@
