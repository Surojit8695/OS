#!/bin/bash

f="$1"

if [ -e "$f" ]
then
    echo "$f  file/folder exists"
    
    
    if [ -f "$f" ]
    then
        echo "$f is a regular file"
    else
        echo "$f is not a regular file"
    fi
    
    

    # More tests (Check whether it is diretory or not)
    if [ -d "$f" ]; then
        echo "$f is a directory"
    fi
    
    
    
    # Check whether it is readable or not
    if [ -r "$f" ]; then
        echo "$f is readable"
    fi
    
    
    
	#check wherther is writable of not
    if [ -w "$f" ]; then
        echo "$f is writable"
    fi
    
    
    
	#check whether it is exutable or not
    if [ -x "$f" ]; then
        echo "$f is executable"
    fi

else
    echo "$f file does NOT exist"
fi

