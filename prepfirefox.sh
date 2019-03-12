#!/bin/zsh
echo -n "This will remove all your Firefox profiles, do you want to continue? [Y/n]"
read ans
if [[ $ans == "n" ]]; then
	echo "Aborted Firefox Fix"
	exit
fi

cp ~/.scripts/firefox.ini ~/Library/Application\ Support/Firefox/profiles.ini
rm -rf ~/Library/Application\ Support/Firefox/Profiles/*.default
cp -r ~/.scripts/spoody.default ~/Library/Application\ Support/Firefox/Profiles/
