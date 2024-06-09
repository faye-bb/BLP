#!/bin/bash


temp_file=/tmp/temp_CD
trap "rm -f $temp_file" INT
cd_data="cd_data.csv"
track_data="tracks.csv"
menu_choice=""


yes_or_no() {
	local tmp=""
	while : ;do
	echo "Are you sure to do this? yes or no..."
	read tmp
	case $tmp in 
		[y,Y] | [y,Y][e,E][s,S] ) 
			return 0
			;;
		[n,N] | [n,N][o,O] )	
			return 1
			;;
		* ) 	{
			echo "?"
		}
			;;
	esac
done
}


## a:Add new CD
add_cd() {
	echo "Please input CD no:"
	read cd_no
	echo "Please input CD title:"
	echo
	read cd_title
	echo "Plase input CD music type"
	echo
	read cd_musictype
	echo "please input CD artist"
	read cd_artist
	echo
	tmp="$cd_no,$cd_title,$cd_musictype,$cd_artist"

	echo "$tmp"
	
	yes_or_no

	if test $? = 0 ; then
		echo "$tmp" >> $cd_data
	else
		echo "cancel"
	fi
}




set_menu_choice() {
	clear
	echo "easy CD player menu"
	echo "options :-"
	echo
	echo "	a) Add new CD"
	echo "	b) Find a CD"
	echo "	c) Count the CDs and tracks in the catelog"
	:
	## TODO!!
	echo 
	echo "Please enter your command:"
	echo
	
	read menu_choice
	return

}

add_cd
