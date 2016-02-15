.PHONY: test-main
test-main: test-pre
	cd test && bats main.bats

.PHONY: test
test: test-pre
	cd test && bats .



.PHONY: test-pre
test-pre:
	rm -rf test/last/

live: IMC-mail-extract
	cp "$<" ../

.PHONY: docs
docs: IMC-mail-extract-docs.html

README.md: IMC-mail-extract
	perl -MPod::Markdown -e 'Pod::Markdown->new->filter(@ARGV)' "$<" > "$@"

IMC-mail-extract-docs.html: IMC-mail-extract
	pod2html "$<" --outfile "$@"
