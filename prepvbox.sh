#!/bin/zsh
echo -n "Continuing will remove all VBox data, are you sure you want to continue? [Y/n]"
read ans
if [[ $ans == "n" ]]; then
	echo "Aborted VBox"
	exit;
fi

rm -rf ~/VirtualBox\ VMs
mkdir -f ~/goinfre/vbox
ln -s ~/goinfre/vbox ~/VirtualBox\ VMs
