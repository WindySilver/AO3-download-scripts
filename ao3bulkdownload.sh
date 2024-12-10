#!/bin/bash

a=1

echo "Starting download batch."
cat AO3URLs.txt | while read line
do
   echo "Starting the download of story $a."
   bash ao3download.sh $a $line
   echo "Story $a downloaded. Sleeping."
   ((a=$a+1))
   sleep 15
   echo "Sleep finished."
done

echo "Batch finished. Ending script."
