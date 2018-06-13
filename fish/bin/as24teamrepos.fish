function as24teamrepos 
set teamId "1995704"

curl -q \
	-u "$as24_git_token:x-oauth-basic" \
	-sk "https://api.github.com/teams/$teamId/repos?per_page=1000" \
	| grep '"git_url"' \
  	| awk -F': "' '{print $2}' \
  	| sed -e 's/",//g' 
end
