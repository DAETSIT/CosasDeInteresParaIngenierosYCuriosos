#!/bin/bash
rm  *~;
echo "#commit" $*;
git add * &&
echo "#git add" * ":DONE!";
if [ "$#" -gt "0" ]
then
	texto=$@; 
else
    texto=$(zenity --title "Tag commit" --entry --text "vacio es date");
    if [$texto -z ]
    then
        texto=$(date);
    fi
fi
git ca -m "$texto"; 
echo "#git ca -m" $texto ":DONE!"; 
git pull&&
echo "#git pull :DONE!";
git push&&
echo "#git push :DONE!";
exit 0
