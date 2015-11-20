
rdp(){
	geometry=$(exec resolution)
	echo "Resolution: ${geometry}"
	if [ -z $geometry ]; then
	    geometry="1600x1200"
	fi
	echo "RDP geometry: $geometry"
	host=$1
	(rdesktop -g $geometry -k de -PNDz -a 16 -x l -r clipboard:PRIMARYCLIPBOARD -r sound:off -r disk:archie=/home/rsladek/win_share -d AS24 $host:3389)& 
}
export rdp
