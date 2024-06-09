#!/bin/bash

x='ls -la'

y="$x"

echo 'y=$x' "$y"

eval "$y"
