#!/bin/bash

#dialog --msgbox 'hello world' 9 18
#echo $?
#clear


dialog --title "Check me" --checklist "Pick Numbers"  15 25 3 1 "one" "off" 2 "two" "on" 3 "three" "off"

## $?为上一条语句的退出码
echo $?
