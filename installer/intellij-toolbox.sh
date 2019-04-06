toolbox=jetbrains-toolbox-1.14.5037.tar.gz
type wget >/dev/null 2>&1
if [ "$?" -ne "0" ]
then
	sudo apt install -y wget
fi

tempdir=$(mktemp -d)
cd $tempdir
wget https://download.jetbrains.com/toolbox/$toolbox
tar --strip-components=1 -xvf $toolbox
mv jetbrains-toolbox /usr/bin/

