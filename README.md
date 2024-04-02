# Joy-LHD
Joy@LHD kleiner Spaß mit Scripting in der LHD
> Alle hier aufgeführten Dateien enthalten Funktionen.Damit die Funktionen abrufbar sind, müssen sie in der ~/.profile oder in der ~/.alias oder direkt am Prompt gesourced werden.

## . DateiZumClipboard._sh
> stellt folgende Funktion zur Verfügung:
### _f2xcb()
> Lege den Inhalt einer als Parameter übergebenen Textdatei in die Systemzwischenablage oder wenn Datei keine Textdatei, dan lege nur den Dateinamen in der Systemzwischenablage ab. Funktioniert unter Wayland und XOrg/X11. Nach Aufruf kann der in die Zwischenablage abgelegte Inhalt per STRG-V eingefügt werden.
#### Aufruf: `~ $> _f2xcb /Pfad/zur/Datei.txt`

## . SucheSubstring._sh 
> stellt folgende Funktion zur Verfügung:
### _sucheSub()
> sucht in den Namen der Aliase, in den Namen deklarierten Funktionen, in der History nach Befehlseingaben und im $PATH nach Executables, die den an die Funktion als Parameter übergebenen String enthalten.
#### Aufruf: `~ $> _sucheSub Suchstring`

## . FarbcodesConsole._sh
> stellt folgende Funktion zur Verfügung:
### _colorCodesPrompt()
> setzt Variablen fuer die Formatcodes am Prompt im Terminal
#### Aufruf: `~ $> _colorCodesPrompt`
> Ab dem Aufruf können können in der aktiven Shell Vorder- und Hintergrundfarbe sowie rudimentäre Textformatierungen über Variablen gesetzt werden.
#### Beispiel (Nutzung der Variablen): `~ $> echo "${YELLOW}${BBLUE}gelber Text, blauer Hintergrund${CRESET} und wieder normal"`

## . MeinPrompt._sh
> stellt folgende Funktion zur Verfügung:
### _myPSx()
> Setzt den Prompt der Bash je nach übergebenem Parameter (0 - 6) auf verschiedene Weise um. Bei Aufruf ohne Parameter gilt _myPSx 0 als Standard, bei _myPSx 6 wird auf den Stadardprompt des Systems zurückgesetzt. Die Funktion setzt die unter FarbcodesConsole._sh in Funktion _colorCodesPrompt definierten Variablen zwingend voraus. 
#### Aufruf (Beispiel): `~ $> _myPSx 0`

## . TestePrimzahl._sh
> stellt folgende Funktion zur Verfügung:
### _prim()
> Testet ob die als Parameter übergebene Zahl eine Primzahl ist. Gibt /true/ zurück, wenn Prim und /false/, wenn nicht. Der Rückganewert ist 127, wenn keine positive Ganzzahl übergeben wurde.
#### Aufruf (Beispiel): `~ $> _prim 19 && echo "prim" || echo "nicht prim"`
