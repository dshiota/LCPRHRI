TARGET = LCPRHRI.pdf \
         AEBA.pdf

%.pdf: %.md
	pandoc $< -o $@ -V documentclass=ltjarticle --pdf-engine=lualatex

.PHONY: all clean

all: $(TARGET)
	
clean:
	rm $(TARGET)

