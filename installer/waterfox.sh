type curl >/dev/null 2&>1
if [ "$?" -ne "0" ]
then
	sudo apt install -y curl
fi

echo "deb https://dl.bintray.com/hawkeye116477/waterfox-deb release main" | sudo tee -a /etc/apt/sources.list \
	&& curl https://bintray.com/user/downloadSubjectPublicKey?username=hawkeye116477 | sudo apt-key add -
sudo apt update \
	&& sudo apt install -y waterfox

# isntall late tab groups
# https://github.com/JustOff/ca-archive/releases
