# This script just hijacks Brew install
# Remove package from log (avoid duplicate entries)

if [[ $1 != "install"  ]]; then
		brew $@
		exit
fi

sed -i '' "/$2/d" ~/.scripts/brew.install.log
echo $2 >> ~/.scripts/brew.install.log

brew $1 $2
