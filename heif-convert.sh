#!/bin/bash

#http://stuffjasondoes.com/2019/07/10/batch-convert-heic-to-jpg-in-linux/
#sudo apt-get install libheif-examples

for f in *.heic
do
	echo "working on file $f"
	heif-convert $f $f.jpg
done


