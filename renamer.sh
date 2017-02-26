#!/bin/bash

FILES=~/Downloads/*.jpg

for f in $FILES
do
  echo "Processing $f file..."
  name=`sips -g creation "$f" | grep creation | awk '{print $2}' | tr : _` 
  
  if [[ -e ${name}.jpg ]] ; then
	  i=2
	  while [[ -e "${name}_${i}.jpg" ]] ; do
		  let i++
	  done
	  name="${name}_${i}"
  fi

  cp "$f" "$name.jpg"
  sips -Z 1200 "$name.jpg"
done
