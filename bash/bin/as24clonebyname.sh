#!/bin/sh
debug=$4

# if you want more verbose output just send 4th parameters 'debug'
debugEcho(){
	if [ "x${debug}" == "xdebug" ]; then
		echo "$1";
	fi
}


# github.com, gitlab.com, github.as24.local
repoHost=$1
repoHostDir=""

debugEcho "Passed repoHost: $repoHost"

# rsladek, autoscout24, rafalsladek etc.
repoUser=$2
repoUserDir=""
debugEcho "Passed repoUser: $repoUser"

# App-V3, classified-detail
repoName=$3
debugEcho "Passed repoName: $repoName"

case "$repoHost" in
    github.com)
            repoHostDir="hub.com"
            ;;
    github.as24.local)
            repoHostDir="hub.local"
            ;;
    gitlab.com)
           repoHostDir="lab.com"
           ;;
    *)
            repoHostDir=${repoHost}
esac
debugEcho "repoHostDir: $repoHostDir"

# mapping users to the current directory names. At the moment there is one exception which is autoscout24 -> as24
case "$repoUser" in
    autoscout24)
            repoUserDir="as24"
            ;;
    *)
            repoUserDir=${repoUser}
            ;;
esac
debugEcho "repoUserDir: $repoUserDir"

repoSrcDir="${SOURCES}/${repoHostDir}_${repoUserDir}/$repoName"
debugEcho "repoSrcDir: $repoSrcDir"

clone(){
	if [ -d "$repoSrcDir" ]; then
		echo "[Repo already existst] $repoSrcDir"

		if [ -z $(git -C $repoSrcDir status -s) ]; then
			# no changed to commit
			git -C $repoSrcDir pull --rebase
		else
			# before pull stashing all uncommited changed
			echo "Uncommited changed in this repo. Proceed with stash -> pull -> stash pop"
			git -C $repoSrcDir stash
			git -C $repoSrcDir pull --rebase
			git -C $repoSrcDir stash pop
		fi
	else
		echo "git clone git@${repoHost}:${repoUser}/${repoName}.git"
		# only if all three parameters are defined we can try to clone the repo
		if [ ! -z "${repoHost}" ] && [ ! -z "${repoUser}" ] && [ ! -z "$repoName" ]
			then
				git clone -v "git@${repoHost}:${repoUser}/${repoName}.git" ${repoSrcDir}
		else
				echo "One of the parameters repoHost, repoUser or repoName was empty."
				echo "How to use $0 <repoHost: github.com> <repoUser: rsladek, autoscout24> <repoName: App-V3, classified-detail>"
		fi
	fi
}

clone
