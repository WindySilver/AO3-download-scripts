# AO3Downloader
My Bash scripts for downloading stories from AO3 in all the available formats (at the time of writing .azw3, .epub, .mobi, .pdf and .html), **now with the option to use the .gay mirror URL**

ao3download.sh runs with *bash ao3download.sh filenamewithoutspaces URLTOAO3STORY (optionalStringIfYouWantToUseTheMirror)*

I have found that the filename does not matter, although with previous iterations of the script I was unable to get the spaces to work. The URL can be either HTTPS (from the website) or HTTP (from the email notifications) as long as it does not have the chapter part in it (that is, the URL must end with *works/ID* instead of *works/ID/chapters/CHAPTERID*). Failing to strip the chapter part beforehand will lead to the script trying to download the work the ID of which corresponds with the chapter's ID.

**NEW:** If you want to use the .gay mirror (which seems to be working much better than the .org URL, which nowadays tends to return a lot of HTTP 525 responses at least for downloader scripts (judging from results I've got with my own scripts as well as FanFicFare's Calibre plugin)), just add a separate letter after the URL. Which letter it is doesn't matter; the script only checks if there's a third parameter (the first parameters being the filename and the URL) and uses the mirror if it detects that the third parameter is there regardless of the contents of said parameter.

ao3bulkdownload.sh reads AO3URLs.txt (which must be in the same folder as the script) and uses ao3download.sh (which must also be in the same folder) to download each story, naming the file with incrementing numbers, starting from 1 and ending with however many URLs were read. It can be run with *bash ao3bulkdownload.sh* if you want to use the .org URL or *bash ao3bulkdownload.sh extraStringHere* if you want to use .gay the mirror (like with the main download script, the extra string can be any singular letter; there just needs to be something as a parameter so the script knows it needs to use the mirror).

Please do not remove (or decrease the numbers in) the *sleep* lines from the script as they are meant to keep the scripts from overloading AO3's servers and the user from getting blocked by systems meant to prevent DDOS attacks.
