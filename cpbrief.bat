@echo off
IF %1.==. GOTO E1
sed -r -f "C:\Users\phine\Documents\Debate\Brief Markup\sedbrief.txt" "%1.txt" > "%1.tex"
pdflatex "%1.tex"
IF %ERRORLEVEL% neq 0 GOTO E2
del "%1.log"
GOTO END
:E1
echo ERROR: No filename. Please provide the name of the text file you would like to compile.
GOTO END
:E2
echo ERROR: One or more of the files cpbrief needs to modify are open somewhere (check the browser). Close them and try again.
:END