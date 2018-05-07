TARGET = LCPRHRI.pdf \
         AEBA.pdf \
				 OMNDEF.pdf

%.tex: %.md
	pandoc $< -o $@ --listings --toc -V colortheme=dolphin -V documentclass=ltjbook -V lang=en-US --pdf-engine=lualatex -V CJKmainfont=IPAexGothic --template eisvogel.tex

%.pdf: %.md
	pandoc $< -o $@ --listings --toc -V colortheme=dolphin -V documentclass=ltjbook -V lang=en-US --pdf-engine=lualatex -V CJKmainfont=IPAexGothic --template eisvogel.tex

.PHONY: all clean

all: $(TARGET)
	
clean:
	rm $(TARGET)

