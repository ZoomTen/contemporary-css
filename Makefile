SRCDIR := src
BUILDDIR := build

CSS := contemporary.css
PAGETITLE := Testing

SASSCDIR := /usr/bin
PANDOCDIR := /usr/bin

BUILTFILES := $(BUILDDIR)/$(CSS) $(BUILDDIR)/index.html

all: $(BUILTFILES)



$(BUILDDIR)/%.css: $(SRCDIR)/%.sass
	$(SASSCDIR)/sassc $< $@

$(BUILDDIR)/%.html: $(SRCDIR)/%.md
	echo "<!DOCTYPE html>" > $@
	echo "<head>" >> $@
	echo "<title>$(PAGETITLE)</title>" >> $@
	echo '<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1">' >> $@
	echo "<link rel=\"stylesheet\" href=\"$(CSS)\" media=\"screen,tv,projection\">" >> $@
	echo "</head>" >> $@
	echo "<body>" >> $@
	$(PANDOCDIR)/pandoc -f markdown -t html $< >> $@
	echo "</body>" >> $@
	echo "</html>" >> $@

clean:
	rm $(BUILTFILES)
