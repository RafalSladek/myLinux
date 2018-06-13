function ass
	set tmp /tmp/aws_assume.tmp
	awstools assume --export $tmp --export-profile $argv; and source $tmp
	rm $tmp
end
