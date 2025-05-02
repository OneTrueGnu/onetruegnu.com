
MDCOMPILER=Markdown_1.0.1/markdown.pl

DOCHEAD=src/document_header.html
DOCTRAIL=src/document_trailer.html

all: build/index.html build/style.css

build/index.html: src/index.md $(DOCHEAD) $(DOCTRAIL)
	cp $(DOCHEAD) build/index.html
	$(MDCOMPILER) src/index.md >> build/index.html 
	cat $(DOCTRAIL) >> build/index.html

build/style.css: src/style.css
	cp src/style.css build/style.css

clean:
	rm -rf build
	mkdir build
