#!/bin/bash

Y=$(date +%Y)
M=$(date +%m)
D=$(date +%d)
hr=$(date +%H)
min=$(date +%M)
sec=$(date +%S)

Ym=$Y-$M
Ymd=$Y-$M-$D
Ymdhms= $Y-$M-$D $hr:$min:$sec
GitRep="Transyslab"
HomeDir="/mnt/c/GitRepo"

Gitdir="$HomeDir/$GitRep"
FileDir="$HomeDir/$GitRep/$Ym"
FileNm="$Ymd".md

mkdir -p $FileDir

echo "### $Ymdhms Diary" >> $FileDir/$FileNm

cd $Gitdir
git add .
git commit -m "commit $FileNm"
git push origin main
