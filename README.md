# myLinux
I started my advanteure with linux. This is what came up out of it


## Lessons learnd 

### How to delete the commit history in github, after commiting some sensitive data
```
$ git clone https://github.com/acsudeep/myproject.git
```

Since all the commit history are in the “.git” folder, we have to remove it. So, go inside your project folder. For me the project folder is ‘myproject’.

```
$ cd myproject
```
And delete the ‘.git folder’ with this command.

```
$ sudo rm .git -r
```
Now, let us re-initialize the repository.

```
$ git init
$ git remote add origin https://github.com/acsudeep/myproject.git
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


In Jan 16 I discovered tmux, thanks to Alex.
A good documentation you will find here - https://danielmiessler.com/study/tmux/

A helpfull tool for bash is git completion, which is part of bash-completion
Some links which I find usefull :
*https://git-scm.com/book/en/v1/Git-Basics-Tips-and-Tricks
*https://github.com/bobthecow/git-flow-completion/wiki/Install-Bash-git-completion
