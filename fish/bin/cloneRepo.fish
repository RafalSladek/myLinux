
function cloneTeamRepos
	cd /Users/rsladek/Sources/hub.com_as24
	for r in (getTeamRepos); git clone "$r"; 
end
