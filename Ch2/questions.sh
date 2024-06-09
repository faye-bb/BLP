#!/bin/bash

# Ask some questions and collect the answer

dialog --title "Questions" --msgbox "Welcome to my simple survey" 9 18

dialog --title "Confirm" --yesno "Are you willing to take part?" 9 18

## if not yes(yes 0),bye bye
if test $? != 0 ; then
	dialog --infobox "Thank you anyway" 5 20
	sleep 2
	dialog --clear
	exit 0 
fi

TEMP_PATH=$(mktemp)

## 2 is stderr,here dialog output user's input to 2
dialog --tile "Questions" --inputbox "Please enter your name" 9 30 2>$TEMP_PATH
Q_NAME=$(cat $TEMP_PATH)

dialog --menu "$Q_NAME, what kind of music do you like best?" 15 30 4   1 "classical" 2 "Jazz" 3 "Country" 4 "Other" 2>$TEMP_PATH
Q_MUSIC=$(cat $TEMP_PATH)


if [ "$Q_MUSIC" = "1" ] ; then
	dialog --title "like Classical" --msgbox "Good choice" 12 25
else
	dialog --title "Doesn't like Classical" --msgbox "${Q_MUSIC},Shame" 12 25
fi

sleep 2
dialog --clear
clear

exit 0
