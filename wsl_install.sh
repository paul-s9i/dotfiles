#!/usr/bin/bash

touch ~/.hushlogin

sudo apt update
sudo apt -y upgrade

# TODO: rewrite dependences installation
sudo apt -y install unzip
sudo apt -y install build-essential
sudo apt -y install manpages-dev

# ripgrep
sudo apt -y install ripgrep
sudo apt -y install fzf
sudo apt -y install fd-find
sudo apt -y install universal-ctags

#TRUE ripgrep
curl -LO https://github.com/BurntSushi/ripgrep/releases/download/13.0.0/ripgrep_13.0.0_amd64.deb
sudo dpkg -i ripgrep_13.0.0_amd64.deb
rm ripgrep_13.0.0_amd64.deb

# zsh
# sudo apt -y install zsh
# chsh -s $(which zsh)
# touch ~/.zshrc
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# rm ~/.zshrc.pre-oh-my-zsh 

# Node / nvm 
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This will load nvm

nvm install --lts
# npm install -g typescript typescript-language-server
# neovim build
sudo apt-get -y install ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip curl doxygen

# TODO: write a compile from 
git clone https://github.com/neovim/neovim
cd neovim
git checkout stable
make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install
cd ..
sudo rm -r neovim/
npm install -g neovim

# neovim config dir
mkdir -p ~/.config


# TODO: if WSLg
curl -sLo /tmp/win32yank.zip https://github.com/equalsraf/win32yank/releases/download/v0.0.4/win32yank-x64.zip
unzip -p /tmp/win32yank.zip win32yank.exe > /tmp/win32yank.exe
chmod +x /tmp/win32yank.exe
sudo mv /tmp/win32yank.exe /usr/local/bin/
sudo apt install wslu
