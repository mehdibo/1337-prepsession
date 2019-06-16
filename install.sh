#!/bin/zsh

CUSTOMRC=".spoodyrc"
TARGETDIR=$HOME"/.prep"

echo "Installing..."
git clone https://github.com/mehdibo/1337-prepsession.git $TARGETDIR

echo "Add the following line:"
echo "source "$TARGETDIR"/.rc"
echo "To "$HOME"/.zshrc"