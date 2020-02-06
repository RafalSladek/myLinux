# General
set -x PATH  /usr/local/Cellar $PATH
set -x EDITOR vim
set -x HOST (scutil --get HostName)

set -x GPG_TTY (tty)