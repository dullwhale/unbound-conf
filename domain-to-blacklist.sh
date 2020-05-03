#!/bin/sh

#pipeから読みだしてloop
cat - | while read domain ; do
	echo local-zone: '"'${domain}.'"' static
done
