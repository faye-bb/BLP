#!/bin/bash

read now

case "$now" in 

  1 )
  echo "Good Morning!!"
  ;;
  2 )
  echo "Good Aftermoon!!"
  ;;
  * )
  echo "thanks!!"
esac

exit 0
