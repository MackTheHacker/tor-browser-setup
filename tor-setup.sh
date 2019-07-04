#! /bin/bash

# A simple script to automate the installation of the Tor Browser on Linux (version 8.5.3 as of this script. You can change the download URL or use Tor's built-in updater if it's outdated).  
# Before you run this script, make sure that curl points to https://www.torproject.org/.
# If it does not, then do not run this script. (The unedited version of this script should point to https://dist.torproject.org 

curl https://dist.torproject.org/torbrowser/8.5.3/tor-browser-linux64-8.5.3_en-US.tar.xz --output tor-browser-linux64-8.5.3_en-US.tar.xz
curl https://dist.torproject.org/torbrowser/8.5.3/tor-browser-linux64-8.5.3_en-US.tar.xz.asc --output tor-browser-linux64-8.5.3_en-US.tar.xz.asc 

gpg --keyserver pool.sks-keyservers.net --recv-keys 0x4E2C6E8793298290
gpg --fingerprint 0x4E2C6E8793298290

gpg --verify tor-browser-linux64-8.5.3_en-US.tar.xz.asc > torcheck.txt 2>&1 

if [ "$(grep -c "Good signature" torcheck.txt)" -ge 1 ]; then 
	tar -xJvf tor-browser-linux64-8.5.3_en-US.tar.xz
	echo "Would you like to run the Tor Browser right now? [y/N]" 
	read userChoice 
	
	if [ $userChoice = "y" ]; then 
		cd tor-browser_en-US && ./start-tor-browser.desktop
	else 
		echo "Finished." 
	fi

	echo "Would you like to remove the text file (torcheck.txt) created by this program? [y/N]"
	read textChoice
	
	if [ $textChoice = "y" ]; then
		rm torcheck.txt
		echo "file removed"
	else
		echo "Skipping file removal."
	fi
else 
	(>&2 echo "ERROR: Downloaded file did NOT have a good signature. Skipping installation. Make sure the URL is correct and points to https://dist.torproject.org") 
	
fi 

echo "Program terminating..."
