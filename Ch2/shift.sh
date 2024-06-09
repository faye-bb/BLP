#!/bin/bash

# shift 变量左移一位 $1变成$0 ...
while [ "$1" !=  ""  ];do
	echo "$1"
	shift
done

exit 0
