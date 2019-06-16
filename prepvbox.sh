#!/bin/zsh
echo -n "Continuing will remove all VBox data, are you sure you want to continue? [Y/n]"
read ans
if [[ $ans == "n" ]]; then
	echo "Aborted VBox"
	exit;
fi

rm -rf ~/VirtualBox\ VMs
ln -s ~/goinfre/VirtualBox\ VMs ~/VirtualBox\ VMs
