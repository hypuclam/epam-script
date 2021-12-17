#!/bin/bash
RUNAT="03:45"
while [ 1 ]
do
    DATE=`/bin/date +%H:%M`
    if [ $DATE. = $RUNAT. ]
    then
        set -x
        exec 1>archive.logs 2>&1 3>&1
        for folder in ./folder/*
        do
            tar cvzf ./folder/$(basename $folder).tar.gz `find $folder -type f -daystart -mtime 1` &
        done
        sleep 86400
    fi
    sleep 60
done