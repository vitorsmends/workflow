#!/bin/bash

echo "Iniciando instalações"
sudo apt update

# Para rodar este programa utilize os seguintes comandos
# chmod +x setup.bash
# ./setup.bash

# Instalando o pacote do git
sudo apt-get install git

# Instalando o vscode
sudo snap install --classic code

# Draw IO
sudo snap install drawio

# Element io
sudo apt install -y wget apt-transport-https
sudo wget -O /usr/share/keyrings/element-io-archive-keyring.gpg https://packages.element.io/debian/element-io-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/element-io-archive-keyring.gpg] https://packages.element.io/debian/ default main" | sudo tee /etc/apt/sources.list.d/element-io.list
sudo apt update
sudo apt install element-desktop | echo -ne 'y'

# Instalando o Terminator
sudo apt-get install terminator

# Instalando o Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb

# Instalando o telegram
wget "https://telegram.org/dl/desktop/linux" -O telegram.tar.xz
sudo tar -xvf telegram.tar.xz -C /opt
sudo mv /opt/Telegram /opt/telegram-desktop
sudo ln -sf /opt/telegram-desktop/Telegram /usr/bin/telegram
echo -e '\n[Desktop Entry]\nName=Telegram\nExec=/opt/telegram-desktop/Telegram\nIcon=/opt/telegram-desktop/Telegram\nType=Application\nCategories=Network;InstantMessaging;' | sudo tee /usr/share/applications/telegram.desktop

# themes
sudo apt install gnome-tweak-tool | echo -ne 'y'
sudo apt install gnome-tweaks
cd & mkdir ~/.themes
cd & mkdir ./icons
sudo apt install dconf-editor

# LaTeX
sudo apt-get install texlive-full
tlmgr install abntex2        
tlmgr update abntex2
tlmgr init-usertree
