# Joy-LHD
Joy@LHD kleiner Spaß mit Scripting in der LHD

Alle hier aufgeführten Dateien enthalten Funktionen.Damit die Funktionen abrufbar sind, müssen sie in der ~/.profile oder in der ~/.alias oder direkt am Prompt gesourced werden.
## . DateiZumClipboard._sh

stellt folgende Funktion zur Verfügung:
### _f2xcb()

lege Inhalt einer Textdatei in die Systemzwischenablage oder wenn Datei keine Textdatei, dan lege nur den Dateinamen in der Systemzwischenablage ab. Funktioniert unter Wayland und XOrg/X11
#### Aufruf: ~ $> _f2xcb /Pfad/zur/Datei.txt

## . SucheSubstring._sh 

stellt folgende Funktion zur Verfügung:
### _sucheSub()

sucht in den Namen der Aliase, in den Namen deklarierten Funktionen, in der History nach Befehlseingaben und im $PATH nach Executables, die den an die Funktion als Parameter übergebenen String enthalten.
#### Aufruf: ~ $> _sucheSub Suchstring

## . FarbcodesConsole._sh

stellt folgende Funktion zur Verfügung:
### _colorCodesPrompt()

setzt Variablen fuer die Formatcodes am Prompt im Terminal
#### Aufruf: ~ $> _colorCodesPrompt

ab jetzt können Voder- und Hintergrundfarbe sowie rudimentäre Textformatierungen über Variablen gesetzt werden.
#### Beispiel: ~ $> echo "${YELLOW}${BBLUE}gelber Text, blauer Hintergrund${CRESET} und wieder normal"


## . 
