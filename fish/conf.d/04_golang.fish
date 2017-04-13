set -x PATH $PATH /usr/local/go/bin
set -x GOPATH $HOME/go
set -x PATH $PATH $GOPATH/bin

function code
  /Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code $argv
end
