#!/bin/sh
baseTargetDirName="src/main/res/drawable"
dirs="
-mdpi
-hdpi
-xhdpi
-xxhdpi
-xxxhdpi"

# create drawable dirs if not exisit
while read -r line; do
    echo "dealer/$baseTargetDirName$line"
    mkdir -p "dealer/$baseTargetDirName$line"	
done <<< "$dirs"


# run gradle to get output and error into a file
./gradlew clean testDebug > output.txt 2>&1

# extract drawable filename from gradle output and copy all files into dealer module
cat output.txt | grep -i "with value '@drawable/" | awk -F'@drawable/' '{print $2}' | awk -F''\''[).]' '{print $1}' | awk '!NF || !seen[$0]++' | while read drawableFileName; do
	echo $drawableFileName	
	while read -r line; do
		cp  app/$baseTargetDirName$line/$drawableFileName* dealer/$baseTargetDirName$line/
	done <<< "$dirs"
done
