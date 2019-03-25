# set the workspace path
set -x GOPATH /home/hassan/go

# add the go bin path to be able to execute our programs
set -x PATH $PATH /usr/local/go/bin $GOPATH/bin
