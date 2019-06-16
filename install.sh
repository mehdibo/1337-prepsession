#!/bin/zsh

CUSTOMRC=".spoodyrc"

echo "Cloning..."
git clone https://github.com/mehdibo/1337-prepsession.git $HOME/.scripts

echo "Preparing .zshrc..."
sed -i '' '/source $HOME\/'$CUSTOMRC'/d' ~/.zshrc
echo 'source $HOME/'$CUSTOMRC >> ~/.zshrc
echo 'export PATH=$HOME/.scripts:$PATH' > ~/$CUSTOMRC