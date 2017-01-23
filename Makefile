.PHONY: all clean

OUTPUT ?= out/

$(OUTPUT)%.html: %.md
	pandoc -s -S $^ --from markdown --to html5 -o $@

TARGETS = index.html
PREFIXED = $(patsubst %, $(OUTPUT)%, $(TARGETS))

all: $(PREFIXED)

clean:
	rm -f $(PREFIXED)

