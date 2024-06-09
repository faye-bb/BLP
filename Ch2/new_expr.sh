#!/bin/bash

## 两队括号用于算术运算，一对括号用于命令执行

x=0

while [ "$x" -ne 10 ]; do
	echo "$x"
	x=$(($x+1))
done

exit 0
