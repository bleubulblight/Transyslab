#!/bin/bash

Y=$(date +%Y)
M=$(date +%m)
D=$(date +%d)

Ym=$Y-$M
Ymd=$Y-$M-$D
GitRep="Transyslab"
HomeDir="/mnt/c/GitRepo"

Gitdir="$HomeDir/$GitRep"
FileDir="$HomeDir/$GitRep/$Ym"
FileNm="$Ymd".md

mkdir -p $FileDir

echo "### $Ymd Diary" >> $FileDir/$FileNm

cd $Gitdir
git add .
git commit -m "commit $FileNm"
git push origin main
