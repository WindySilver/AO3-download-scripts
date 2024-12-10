# AO3Downloader
My Bash scripts for downloading stories from AO3

ao3download.sh runs with *bash ao3download.sh filenamewithoutspaces AO3URL*

I have found that the filename does not matter, although with previous iterations of the script I was unable to get the spaces to work. The URL can be either HTTPS (from the website) or HTTP (from the email notifications) as long as it does not have the chapter part in it (that is, the URL must end with *works/ID* instead of *works/ID/chapters/CHAPTERID*). Failing to strip the chapter part beforehand will lead to the script trying to download the work the ID of which corresponds with the chapter's ID.

ao3bulkdownload.sh reads AO3URLs.txt (which must be in the same folder as the script) and uses ao3download.sh to download each story, naming the file with incrementing numbers, starting from 1 and ending with however many URLs were read. It can be run with *bash ao3bulkdownload.sh*.

Please do not remove the *sleep* lines from the script as they are meant to keep the scripts from overloading AO3's servers and the user getting blocked by systems meant to prevent DDOS attacks.
