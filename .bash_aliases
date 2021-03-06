alias gitpullall="find /usr/sources/ -mindepth 1 -maxdepth 1 -type d -print -exec git -C {} pull \;"
alias getAllDirsIn="find -mindepth 1 -maxdepth 1 -type d"
alias gitUpdateTokenAll="find /usr/sources/ -mindepth 1 -maxdepth 1 -type d -print | xargs -L 1 bash -c 'cd "$0" && gitTokenUpdate'"
alias rdpwin="rdp asdw0459"
alias cdsrc="cd /usr/sources"
alias cdcd="cd /usr/sources/classified-detail"
alias cdcg="cd /usr/sources/classified-gateway"
alias ll="ls -alh"
alias commit="git commit -m $1"
alias status="git status"
alias push="git push"
alias pull="git pull --rebase"
alias updateSystem="sudo pacman -Syu"
alias bfg="java -jar /opt/bfg-1.12.7.jar"
alias as24vpn="sudo openconnect --user rsladek --juniper https://portal.scout24.com/as24ft"
alias aws_assume="source /usr/sources/iam-bash/as24-aws-assume.sh"
alias sshAccess="/usr/sources/iam-bash/ssh-access.sh"
