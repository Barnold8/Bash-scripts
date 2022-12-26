

#### Enable snapd
cd Downloads
git clone https://aur.archlinux.org/snapd.git
cd snapd
makepkg -si

sudo systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap

cd ../
rm -rf snapd
cd ../
#### Enable snapd

#### pacman
yes | sudo pacman -S xclip
yes | sudo pacman -S vscode
yes | sudo pacman -S neovim 
sudo pacman -S steam
yes | sudo pacman -S jre-openjdk
yes | sudo pacman -S discord
yes | sudo pacman -S valgrind
yes | sudo pacman -S nodejs
yes | sudo pacman -S npm
yes | sudo pacman -S neofetch
#### pacman

#### yay
yes | yay -S teams
#### yay


#### App images
mkdir AppImages
wget https://github.com/obsidianmd/obsidian-releases/releases/download/v1.1.9/Obsidian-1.1.9.AppImage
#### App images


#### Snap packs
sudo snap install valgrind --classic
sudo snap install intellij-idea-community --classic
sudo snap install discord
#### Snap packs


#### bashrc
echo 'alias Refresh="source ~/.bashrc "' >> .bashrc
echo 'alias EditBashrc="nvim ~/.bashrc"' >> .bashrc
echo 'alias pip="python3 -m pip"' >> .bashrc
echo 'alias macos="neofetch --ascii_distro macos"' >> .bashrc
echo 'alias win7="neofetch --ascii_distro windows7"' >> .bashrc
echo 'alias win10="neofetch --ascii_distro windows10"' >> .bashrc
echo 'alias GLPass="echo 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"' >> .bashrc
echo 'alias GLPPass="echo glpat-NFPMo2-Gy48h_yxxq8Ft"' >> .bashrc
echo 'alias cls="clear"' >> .bashrc
echo 'alias clsls="clear && ls"' >> .bashrc
echo 'alias EditNvimrc="nvim ~/.config/nvim/init.lua"' >> .bashrc
echo 'alias nvimLOC="echo '~/.config/nvim/'"' >> .bashrc
echo 'alias py="python3" ' >> .bashrc
echo 'alias clse="cls && exit"' >> .bashrc
echo 'alias tViewer="teamviewer -daemon start && teamviewer"' >> .bashrc
#### bashrc


#### Teamviewer
git clone https://aur.archlinux.org/teamviewer.git
cd teamviewer
makepkg -si
cd ../
rm -rf teamviewer
#### Teamviewer

#### Docker
yay -S docker
sudo usermod -aG docker $USER
newgrp docker
sudo systemctl enable docker
sudo systemctl start docker
#### Docker




