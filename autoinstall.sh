sudo pacman -Syu --noconfirm

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
rm -rf yay

sudo pacman -S --needed --noconfirm - < pkg_list_pacman.txt
yay -S --needed --noconfirm - < pkg_list_aur.txt
fish
omf install bobthefish
chsh -s /usr/bin/fish

sudo sed -i 's/bindsym $mod+Return exec.*/bindsym $mod+Return exec xfce4-terminal/g' ~/.i3/config
sed -i 's/Xcursor.size:.*/Xcursor.size: 32/g' ~/.Xresources
sed -i 's/Xft.dpi:.*/Xft.dpi: 192/g' ~/.Xresources
sudo sed -i 's/#Color/Color/g' /etc/pacman.conf

