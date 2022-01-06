#!/bin/bash

# Para rodar este programa utilize os seguintes comandos
# chmod +x setup.bash
# ./setup.bash

# Instalando o pacote do git
sudo apt-get install git
# Instalando o VsCode
sudo snap install --classic code

# Instalando o Terminator
sudo add-apt-repository ppa:gnome-terminator
sudo apt-get update
sudo apt-get install terminator

# Instalando o Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb

# Instalando o telegram
wget "https://telegram.org/dl/desktop/linux" -O telegram.tar.xz
sudo tar -xvf telegram.tar.xz -C /opt
sudo mv /opt/telegram /opt/telegram-desktop
sudo ln -sf /opt/telegram-desktop/Telegram /usr/bin/telegram
echo -e '\n[Desktop Entry]\nName=Telegram\nExec=/opt/telegram-desktop/Telegram\nIcon=/opt/telegram-desktop/Telegram\nType=Application\nCategories=Network;InstantMessaging;' | sudo tee /usr/share/applications/telegram.desktop

# Ajustes de tema
sudo apt install gnome-tweaks
sudo apt install gnome-tweak-tool
cd %% mkdir ~/.themes
cd && mkdir ./icons
sudo apt install dconf-editor
