#!/bin/bash

dir=$(pwd)
echo "Please type in a file to search:" &
read SEARCHQUERY &
echo "Found files:" &
cd / &
find | grep $SEARCHQUERY
cd $dir
