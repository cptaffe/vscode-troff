
.SILENT:

.PHONY:

%.json: %.yaml
	yq '@json' <$< >$@

all: syntaxes/troff.tmLanguage.json

initialize:

finalize:

clean:

vsce-pack:
	vsce package
	mv *.vsix .output/

vsce-publish:
	vsce publish

package: initialize clean vsce-pack finalize

publish: initialize clean vsce-publish finalize
