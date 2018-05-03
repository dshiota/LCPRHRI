TARGET = LCPRHRI.pdf \
         AEBA.pdf

%.pdf: %.md
	pandoc $< -o $@ --listings --toc -V documentclass=ltjbook -V lang=en-US --pdf-engine=lualatex -V CJKmainfont=IPAexGothic --template eisvogel.tex

.PHONY: all clean

all: $(TARGET)
	
clean:
	rm $(TARGET)

