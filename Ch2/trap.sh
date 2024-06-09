#!/bin/bash

## trap command signal
### trap - signal ---- back to defalut
### trap '' signal ---- igonre signal

trap 'rm -f /tmp/my_tmp_file_$$' INT
echo creating file /tmp/my_tmp_file_$$
date > /tmp/my_tmp_file_$$

echo "press INT (CTRL-C) to interrupt...."
while test -f /tmp/my_tmp_file_$$ ; do
	echo File exists
	sleep 1
done
echo The file no longer exists

trap  INT
echo creating file /tmp/my_tmp_file_$$
date > /tmp/my_tmp_file_$$

echo "press INT (CTRL-C) to interrupt...."
while test -f /tmp/my_tmp_file_$$ ; do
        echo File exists
        sleep 1
done

exit 0
