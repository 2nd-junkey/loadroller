cd `mktemp -d`
sudo apt install -y curl cmake libfreetype6-dev libfontconfig1-dev xclip git
sudo curl https://sh.rustup.rs -sSf | sh
cargo install cargo-deb
git clone https://github.com/jwilm/alacritty.git
cd alacritty
cargo build --release
cargo deb --install

