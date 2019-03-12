#!/bin/zsh
echo -n "Continuing will remove all VBox data, are you sure you want to continue? [y/N]"
read ans
if [[ $ans != "y" ]]; then
	echo "Aborted VBox"
	exit;
fi

rm -rf ~/VirtualBox\ VMs
ln -s ~/goinfre/VirtualBox\ VMs ~/VirtualBox\ VMs
