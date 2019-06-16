# This script just hijacks Brew install

if [[ $1 != "install"  ]]; then
		brew $@
		exit
fi

echo "Running custom Brew..."
sed -i '' "/$2/d" ~/.prep/brew.packages
echo $2 >> ~/.prep/brew.packages

brew $1 $2
