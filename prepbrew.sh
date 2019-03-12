#!/bin/zsh
echo -n "This will remove the old Brew Installation, do you want to continue? [Y/n]"
read ans
if [[ $ans == "n" ]]; then
	echo "Aborted Brew Installation"
	exit
fi

unlink ~/.brew
rm -rf ~/goinfre/.brew
sed -i '' '/export PATH=\$HOME\/.brew\/bin:\$PATH/d' ~/.myzshrc

git clone --progress --verbose --depth=1 https://github.com/Homebrew/brew ~/goinfre/.brew
ln -s ~/goinfre/.brew ~/.brew
echo 'export PATH=$HOME/.brew/bin:$PATH' >> ~/.myzshrc
brew update -v

echo "Do you want to install the following packages:? [Y/n]"
cat ~/.scripts/brew.install.log
read ans
if [[ $ans == "n" ]]; then
	echo "Aborted resotring Brew packages"
	exit
fi

while read package; do
	brew install $package
done < ~/.scripts/brew.install.log
