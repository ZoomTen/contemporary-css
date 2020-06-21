SRCDIR := src
FONTSDIR := fonts
BUILDDIR := build

CSS := contemporary.css
PAGETITLE := Testing

SASSCDIR := /usr/bin
PANDOCDIR := /usr/bin

BUILTFILES := $(BUILDDIR)/$(CSS) $(BUILDDIR)/index.html

all: $(BUILTFILES) $(BUILDDIR)/$(FONTSDIR)

$(BUILDDIR)/$(FONTSDIR): $(FONTSDIR)
	cp -r $(FONTSDIR) $(BUILDDIR)/$(FONTSDIR)

$(BUILDDIR)/%.css: $(SRCDIR)/%.scss
	$(SASSCDIR)/sassc $< $@

$(BUILDDIR)/%.html: $(SRCDIR)/%.md
	echo "<!DOCTYPE html>" > $@
	echo '<html class="contemporary">' >> $@
	echo "<head>" >> $@
	echo "<title>$(PAGETITLE)</title>" >> $@
	echo '<meta charset="utf-8">' >> $@
	echo '<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1">' >> $@
	echo "<link rel=\"stylesheet\" href=\"$(CSS)\" media=\"screen,tv,projection\">" >> $@
	echo "</head>" >> $@
	echo "<body>" >> $@
	$(PANDOCDIR)/pandoc -f markdown -t html $< >> $@
	echo "</body>" >> $@
	echo "</html>" >> $@

clean:
	rm -f $(BUILTFILES)
	rm -rf $(BUILDDIR)/$(FONTSDIR) #i'm scared
