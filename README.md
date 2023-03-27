# shell-multiupload
a shell script that uploads a file you choose to several different places.

## Requirements
- an OS based on Linux [WSL works if you have windows]
- cURL
- jq

if you have debian or a debian-based distro like ubuntu, `sudo apt-get update && sudo apt-get install -y curl jq` should be enough

## installation 
- download this repository somewhere on your pc. doesn't matter if you git clone it or download it directly.
- cd into the directory you downloaded it in.
- make the file executable by running `chmod +x multiupload.sh`
- that's it!

## running
just run `./multiupload.sh -f [FILE]` and the uploader will do the rest.

## supported websites
- krakenfiles.com (max 1g)
- anonfile-framework based sites (max 20GB) (anonfiles.com, bayfiles.com, filechan.org, letsupload.cc, megaupload.nz, myfile.is, share-online.is, vshare.is, hotfile.io, rapidshare.nu, upvid.cc, openload.cc, lolabits.se)
