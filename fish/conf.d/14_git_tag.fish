function tag
	if test $argv[1] = "-d"
		# delete tag if provided
		if test $argv[2]
			eval command git tag -d $argv[2]
			command git push origin :refs/tags/$argv[2]
		end
	else
		# create new tag and push
    	eval command git tag -a $argv[1] -m $argv[1]
    	command git push --tags
    end
end
