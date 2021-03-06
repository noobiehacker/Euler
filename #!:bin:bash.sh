#!/bin/bash

#1 Take in Version Number
cd
scriptDir="Scripts/"
cd $scriptDir
versionFile="AndroidVersionNumber.txt"
set -- $(<$versionFile)

#2 Create new apk file name with new version number
declare -i var1
var1=$1
var1=$((var1+1))
filename="sashimi-v0.0."
filename+="$var1"
filename+=".apk"

#3 Change File Name

sourcepath="/Users/david/Documents/Development/source/sashimi/app/build/outputs/apk/"
destinationpath="~/Google Drive/Mitoo - The Field/13 Personal Folders/David/Android Sashimi Daily Debug Build"
cd
cd $sourcepath
mv app-debug.apk $filename

#4 Move File

cd
sourcepath+="$filename"
mv $sourcepath $destinationpath

#5Update version number in file
cd
scriptDir="Scripts/"
cd $scriptDir
echo "$var1" > "$versionFile"