echo "Select your distro to install importent software then select 8 to install zsh:"

echo ""
echo "1) Debian/Debian based"
echo "2) Raspberry Pi"
echo "3) RHEL/RHEL based AMD64"
echo "4) RHEL/RHEL based AARCH64"
echo "5) Arch/Arch based"
echo "6) macOS Catalina or Later"
echo "7) FreeBSD"
echo "8) Exit"
read -p "Enter your choice (1-8): " choice

if [ $choice -eq 1 ]; then
    curl https://raw.githubusercontent.com/firebadnofire/zshrc/main/apt-fash.sh | bash; curl -o ~/aptf https://raw.githubusercontent.com/firebadnofire/zshrc/main/apt-fast.conf; sudo mv ~/aptf /etc/apt-fast.conf; sudo apt-fast install -y zsh curl git fzy
elif [ $choice -eq 2 ]; then
    curl https://download.argon40.com/argon1.sh | bash
elif [ $choice -eq 3 ]; then
sudo dnf install zsh git; curl -o fzy-1.0-1.17.x86_64.rpm https://ftp.lysator.liu.se/pub/opensuse/tumbleweed/repo/oss/x86_64/fzy-1.0-1.17.x86_64.rpm; curl -o catimg-2.7.0-4.el9.x86_64.rpm https://download-ib01.fedoraproject.org/pub/epel/9/Everything/x86_64/Packages/c/catimg-2.7.0-4.el9.x86_64.rpm; curl -o neofetch-7.1.0-7.el9.no
.rpm https://download-ib01.fedoraproject.org/pub/epel/9/Everything/x86_64/Packages/n/neofetch-7.1.0-7.el9.noarch.rpm; curl -o screen-4.8.0-6.el9.x86_64.rpm https://download-ib01.fedoraproject.org/pub/epel/9/Everything/x86_64/Packages/s/screen-4.8.0-6.el9.x86_64.rpm; sudo dnf install ./*.rpm
elif [ $choice -eq 4 ]; then
sudo dnf install zsh git; curl -o fzy-1.0-1.15.aarch64.rpm https://ftp.lysator.liu.se/pub/opensuse/ports/aarch64/tumbleweed/repo/oss/aarch64/fzy-1.0-1.15.aarch64.rpm; curl -o neofetch-7.1.0-7.el9.noarch.rpm https://download-ib01.fedoraproject.org/pub/epel/9/Everything/aarch64/Packages/n/neofetch-7.1.0-7.el9.noarch.rpm; curl -o catimg-2.7.0-4.el9.aarch64.rpm https://download-ib01.fedoraproject.org/pub/epel/9/Everything/aarch64/Packages/c/catimg-2.7.0-4.el9.aarch64.rpm; curl -o screen-4.8.0-6.el9.aarch64.rpm https://download-ib01.fedoraproject.org/pub/epel/9/Everything/aarch64/Packages/s/screen-4.8.0-6.el9.aarch64.rpm; sudo dnf install ./*.rpm
elif [ $choice -eq 5 ]; then
    sudo pacman -S --needed zsh curl git fzy
elif [ $choice -eq 6 ]; then
    # Do nothing, continue
    echo Installing configurations...
elif [ $choice -eq 7 ]; then
    su - root -c "pkg install zsh fzy"
elif [ $choice -eq 8 ]; then
    exit
else
    echo "Invalid selection"
fi
mkdir ~/.zshell
curl -Lo ~/.zshell/zsh-autosuggestions.zsh https://infotoast.org/aka/zshsuggest
curl -Lo ~/.zshell/zsh-syntax-highlighting.zsh https://infotoast.org/aka/zshsyntax
curl -o ~/.zshrc https://raw.githubusercontent.com/firebadnofire/zshrc/main/zshrc
echo ""
