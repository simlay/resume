.SUFFIXES: .tex .pdf

SRCS := cv.tex

all: ${SRCS:.tex=.pdf}

.tex.pdf:
	latex --shell-escape $<
	dvips ${<:.tex=.dvi}
	ps2pdf ${<:.tex=.ps}

clean:
	rm -rf *.log *.aux *.pdf *.dvi *.ps
