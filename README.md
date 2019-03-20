A simple shell script that automates the installation process of the current version of the Tor Browser (8.0.7)

NOTES:

1). This tool utilizes curl, tar, and gpg. Make sure these are installed or else the program won't work.

2). Due to this script using curl to fetch the Tor Browser bundle, inspect the URL and veryify that it is HTTPS://dist.torproject.org.
If it is not, do not run this script. 

3). The installation of this script will create a temp file that checks the signature of the tor-browser bundle that you downloaded. Do not remove this file until you check out the results. 

4). At some point in the future, the Tor Browser version will be outdated, you can either update the URL in this script or use the Tor Browser's built-in updater. 
