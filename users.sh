#!/bin/bash

echo "This is rancho das"

# User Defined Variable

hero="rancho"
villain="virus"

echo "3 idiot ks hero hai $hero"

echo "2 idiot ka villain hai $villain"

# System defined variable

echo " my current dire $PWD"

echo " my home dir  is $HOME"

#User Input

read -p "raju ka full name kya tha" fullname

echo "Raju ka full name hai $fullname"

# Arguments

echo "movie name is $0"

echo "movie first hero is $1"

echo "movie second heri is $2"

echo "movie thirld heo is $3"

echo "movie total hero is $@"

echo "number of  idiots is $#"
