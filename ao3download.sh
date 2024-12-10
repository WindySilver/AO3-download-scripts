#!/bin/bash

url=$2
storyid=${url##*/}

echo "Starting download for story $1. Downloading AZW3"
wget -O $1.azw3 https://archiveofourown.org/downloads/$storyid/$1.azw3
echo "AZW3 downloaded. Sleeping."
sleep 10
echo "Sleep done. Downloading EPUB"
wget -O $1.epub https://archiveofourown.org/downloads/$storyid/$1.epub
echo "EPUB downloaded. Sleeping."
sleep 10
echo "Sleep done. Downloading MOBI"
wget -O $1.mobi https://archiveofourown.org/downloads/$storyid/$1.mobi
echo "MOBI downloaded. Sleeping."
sleep 10
echo "Sleep done. Downloading PDF"
wget -O $1.pdf https://archiveofourown.org/downloads/$storyid/$1.pdf
echo "PDF downloaded. Sleeping."
sleep 10
echo "Sleep done. Downloading HTML"
wget -O $1.html https://archiveofourown.org/downloads/$storyid/$1.html
echo "HTML downloaded. Download for story $1 finished. Ending script."

