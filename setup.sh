#!/bin/sh

echo "[+] Installing basic packages [+]"
pkg update
pkg install awesome git gdm sudo xterm irssi 

echo "[+] Adding user to sudoers [+]"

echo "badarg ALL=(ALL) ALL" >> /etc/sudoers

echo "[+] Setting up dot files [+]"

git clone https://github.com/spiperac/dotfiles
cp -R dotfiles/ ~/

echo "[+] Installing and setting ZSH as default shell [+]"

./dotfiles/zsh/init.sh

echo "[+] Done! Please reboot [+]"
