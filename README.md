A simple shell script that automates the installation process of the current version of the Tor Browser (8.0.8)

NOTES:

1). This tool utilizes curl, tar, and gpg. Make sure these are installed or else the program won't work. There is an alternative script that uses wget instead of curl. 
Use whichever one you prefer, as they more or less do the same thing.

2). Due to this script using curl to fetch the Tor Browser bundle, inspect the URL and verify that it is HTTPS://dist.torproject.org.
If it is not, do not run this script. 

3). The installation of this script will create a temp file that checks the signature of the tor-browser bundle that you downloaded. Do not remove this file until you check out the results. 

4). At some point in the future, the Tor Browser version will be outdated, you can either update the URL in this script or use the Tor Browser's built-in updater. 
