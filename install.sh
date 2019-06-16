#!/bin/zsh

CUSTOMRC=".spoodyrc"
TARGETDIR=$HOME"/.prep"

echo "Installing..."
rm -rf $TARGETDIR
git clone https://github.com/mehdibo/1337-prepsession.git $TARGETDIR

touch $TARGETDIR"/brew.packages"

echo "\n\n\n\n"

echo "Add the following line:\n"
echo "source "$TARGETDIR"/.rc"
echo "\nTo your .zshrc"