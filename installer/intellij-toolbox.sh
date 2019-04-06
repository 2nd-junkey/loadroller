toolbox=jetbrains-toolbox-1.14.5037.tar.gz
type wget >/dev/null 2>&1
if [ "$?" -ne "0" ]
then
	sudo apt install -y wget
fi

tempdir=$(mktemp -d)
# trap "rm -rf $tempdir" EXIT
while [ ! -d $tempdir ]
do
	sleep 1
	echo $tempdir
done
cd $tempdir
wget https://download.jetbrains.com/toolbox/$toolbox
tar xvf $toolbox
cd $(dirname $toolbox)

