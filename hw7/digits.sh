#!/bin/bash
c=0
for i in $(echo 1{0,1}{0,1}{0,1}) ; do c=$((c+i))
done

echo $c
