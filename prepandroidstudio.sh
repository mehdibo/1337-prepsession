#!/bin/zsh
echo -n "This will remove all Android Studio data, are you sure you want to continue? [Y/n]"
read ans
if [[ $ans == "n" ]]; then
	echo "Aborted Android Studio"
	exit;
fi

rm -rf ~/Library/Android
mkdir ~/goinfre/Android
ln -s ~/goinfre/Android ~/Library/Android
