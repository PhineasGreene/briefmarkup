IF %1.==. GOTO END1
sed -r -f "C:\Users\phine\Documents\Debate\Brief Markup\sedbrief.txt" "%1.txt" > "%1.tex"
pdflatex "%1.tex"
del "%1.log"
GOTO END2
:END1
echo ERROR: No filename. Please provide the name of the text file you would like to compile.
:END2