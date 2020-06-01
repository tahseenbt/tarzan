#!/bin/bash

# if the number of arguments is not 2, inform the user on how to use the app
if [ $# -ne 2 ]
then
	echo "Usage ./tarzan.sh filename tarfile"
	exit 1
fi

# if the tarfile provided does not exist, inform the user of the error
if [ ! -f $2 ]
then
	echo "Error cannot find tar file $2"
	exit 1

# if the filename is there in tarfile, let the user know
elif [ `tar -tf $2 | grep "$1"` ]
then
	echo "$1 exists in $2"

# or else, let the user know that the file is not there
else
	echo "$1 does not exist in $2"
fi
