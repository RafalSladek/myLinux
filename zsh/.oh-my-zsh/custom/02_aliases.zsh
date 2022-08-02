export PATH=$PATH:/Users/rsladek/Library/Python/3.9/bin/
alias hostswitcher="sudo ruby ~/sources/rafalsladek/hostswitcher/hostswitcher.rb"
alias md5sum=md5

alias ll='ls -alh'
alias rm='rm -f'
alias grep='grep --color=auto'
alias as24='cd ~/sources/autoscout24'

alias untar='tar -zxvf'
alias untarxz='tar -xJf'
alias bastion='aws cloudformation list-exports --query \"Exports[?Name=='\''ConnectCommandBastionHost'\''].Value\" --no-paginate --output text'
alias sfa="scloud account login as24-finance AdminAccess"
alias sfp="scloud account login as24-finance PowerUserAccess"

alias soda="scloud account login as24-cashstack-offerb2c-dev AdminAccess"
alias sopa="scloud account login as24-cashstack-offerb2c-prod AdminAccess"
alias sdsa="scloud account login as24-direct-sale AdminAccess"
alias spea="scloud account login as24-partner-experience AdminAccess"
alias sma="scloud account login as24-marketplace AdminAccess"
alias spsa="scloud account login as24-private-seller AdminAccess"
