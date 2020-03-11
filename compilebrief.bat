sed -r -f "C:\Users\phine\Documents\Debate\Brief Markup\sedbrief.txt" "%1.txt" > "%1.tex"
pdflatex "%1.tex"
del "%1.log"