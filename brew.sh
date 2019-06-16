# This script just hijacks Brew install

if [[ $1 != "install"  ]]; then
		brew $@
		exit
fi

echo "Running custom Brew..."
sed -i '' "/$2/d" ~/.scripts/brew.install.log
echo $2 >> ~/.scripts/brew.install.log

brew $1 $2
