#!/bin/zsh
echo -n "Continuing will remove all Docker data, are you sure you want to continue? [y/N]"
read ans
if [[ $ans != "y" ]]; then
	echo "Aborted Docker"
	exit;
fi

rm -rf ~/.docker ~/Library/Containers/com.docker.docker
mkdir ~/goinfre/.docker ~/goinfre/com.docker.docker
ln -s ~/goinfre/.docker ~/.docker
ln -s ~/goinfre/com.docker.docker ~/Library/Containers/com.docker.docker