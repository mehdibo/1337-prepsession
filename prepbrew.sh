#!/bin/zsh
echo -n "This will remove the old Brew Installation, do you want to continue? [Y/n]"
read ans
if [[ $ans == "n" ]]; then
	echo "Aborted Brew Installation"
	exit
fi

rm -rf ~/goinfre/.brew ~/.brew

git clone --progress --verbose --depth=1 https://github.com/Homebrew/brew ~/goinfre/.brew
ln -s ~/goinfre/.brew ~/.brew
brew update -v

if ! [[ $(cat $HOME/.prep/brew.packages) ]]; then
	echo "Done."
	exit
fi

echo "Do you want to restore the following packages:? [Y/n]"
cat ~/.prep/brew.packages
read ans
if [[ $ans == "n" ]]; then
	echo "Done."
	exit
fi

while read package; do
	brew install $package
done < ~/.prep/brew.packages
