export SSH_AUTH_SOCK=~/.ssh/ssh-agent.$HOST.sock
ssh-add -A 2>/dev/null >/dev/null
if [ $? -ge 2 ]; then
  ssh-agent -a "$SSH_AUTH_SOCK" >/dev/null
fi
