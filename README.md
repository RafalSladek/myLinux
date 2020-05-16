# myLinux
I started my advanteure with linux. This is what came up out of it


## Lessons learnd 

### How to delete the commit history in github, after commiting some sensitive data
```
$ git clone git@github.com:RafalSladek/myLinux.git
```

Since all the commit history are in the “.git” folder, we have to remove it. So, go inside your project folder. For me the project folder is ‘myproject’.

```
$ cd myLinux
```
And delete the ‘.git folder’ with this command.

```
$ sudo rm .git -r
```
Now, let us re-initialize the repository.

```
$ git init
$ git remote add origin git@github.com:RafalSladek/myLinux.git
$ git remote -v
```
Next, let us add all our files and commit the changes.

```
$ git add --all
$ git commit -am 'initial commit'
```

Now, since we just have one commit i.e ‘initial commit’. Let us force push update to our master branch of our project repository.

```
$ git push -f origin master
```
Go and check your project repository in github, you should see only one commit.

# tmux
In Jan 2016 I discovered tmux, thanks to Alex.
[A good documentation you will find here](https://danielmiessler.com/study/tmux/) and a [shortcuts cheet sheet](http://tmuxcheatsheet.com/) 

# git completion
A helpfull tool for bash is git completion, which is part of bash-completion
Some links which I find usefull :
* [Git-Basics-Tips-and-Tricks](https://git-scm.com/book/en/v1/Git-Basics-Tips-and-Tricks)
* [Install-Bash-git-completion](https://github.com/bobthecow/git-flow-completion/wiki/Install-Bash-git-completion)


[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/RafalSladek/mylinux/trend.png)](https://bitdeli.com/free "Bitdeli Badge")

## Ansible

## Setup

1. Install sshpass on mac

        ```bash
        curl -O -L https://fossies.org/linux/privat/sshpass-1.06.tar.gz && tar xvzf sshpass-1.06.tar.gz
        cd sshpass-1.06
        ./configure
        sudo make install
        ```
        
1. Install ansible on mac