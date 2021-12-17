#!/bin/bash
set -x
exec 1>archive.logs 2>&1 3>&1
for folder in ./folder/*
do
  tar cvzf ./folder/$(basename $folder).tar.gz `find $folder -type f -daystart -mtime 1` &
done