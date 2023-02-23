# entweder in der.bashrc sourcen oder direkt da rein...

# Farbcodes --> echon -en '\001...\002'
# sorgt dafür, dass bei der Nutzung im Prompt
# die Zeichen der ASCII-Farbcodes nicht mitgezählt werden
export CRESET=$(echo -en '\001\033[0m\002')
export BLACK=$(echo -en '\001\033[01;30m\002')
export RED=$(echo -en '\001\033[01;31m\002')
export GREEN=$(echo -en '\001\033[01;32m\002')
export YELLOW=$(echo -en '\001\033[01;33m\002')
export BLUE=$(echo -en '\001\033[01;34m\002')
export MAGENTA=$(echo -en '\001\033[01;35m\002')
export CYAN=$(echo -en '\001\033[01;36m\002')
export LIGHTGRAY=$(echo -en '\001\033[01;37m\002')
export GRAY=$(echo -en '\001\033[01;90m\002')
export WHITE=$(echo -en '\001\033[01;97m\002')
export CGOOD=$(echo -en '\001\033[1;36;102m\002')
export CERROR=$(echo -en '\001\033[1;31;103m\002')

# PS0 wird vor jedem Job ausgeführt...
export PS0='${MAGENTA}Start Job: - \d | \t Uhr -${CRESET}\n'
# mir gefällt der Prompt so
# export PS1='${MAGENTA}Ende  Job: - \d | \t Uhr -\n$([[ $? -eq 0 ]] && echo "${CGOOD} ✓ " || echo "${CERROR} ✗ Exitcode: $? ")${CRESET}${WHITE} | Mails: $(grep -c "^Return-Path: " /var/spool/mail/${USER} 2>/dev/null || echo -n "0") | lfd. bg-Jobs: \j | lfd. screen: $(screen -ls 2>/dev/null | grep Detached | wc -l) | lfd. tmux: $(tmux ls 2>/dev/null | wc -l)\n${RED}[${BLUE}\W${RED}]${CYAN} | Links: $(ls -al | grep -e ^l | wc -l) | Verzeichnisse: $(ls -al | grep -e ^d | wc -l) | Dateien: $(ls -al | grep -e ^- | wc -l) | FIFOs: $(ls -al | grep -e ^p | wc -l)\n$([[ $UID -eq 0 ]] && echo ${RED} || echo ${YELLOW})\u@\h:${BLUE}\w${CRESET} \$> '
export PS1='${MAGENTA}<<< \d | \t Uhr <<<\n$( { lv_ecode=$?; [[ $lv_ecode -eq 0 ]] && echo "${CGOOD} ✓ " || echo "${CERROR} ✗ ($lv_ecode) "; } )${CRESET}${WHITE} | Mails: $(grep -c "^Return-Path: " /var/spool/mail/${USER} 2>/dev/null || echo -n "0") | lfd. bg-Jobs: \j | lfd. screen: $(screen -ls 2>/dev/null | grep Detached | wc -l) | lfd. tmux: $(tmux ls 2>/dev/null | wc -l)\n${RED}[${BLUE}\W${RED}]${CYAN} | Links: $(ls -al | grep -e ^l | wc -l) | Verzeichnisse: $(ls -al | grep -e ^d | wc -l) | Dateien: $(ls -al | grep -e ^- | wc -l) | FIFOs: $(ls -al | grep -e ^p | wc -l)\n$( [[ $UID -eq 0 ]] && echo ${RED} || echo ${YELLOW})$([[ -z $SSH_CLIENT ]] || echo "ssh:")\u@\h:${BLUE}\w${CRESET} \$> '
 # die Reihenfolge der einzelnen Angaben ist nicht zufällig
