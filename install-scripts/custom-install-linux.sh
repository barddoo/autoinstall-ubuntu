apt update
add-apt-repository ppa:neovim-ppa/stable
apt update
apt install -y flatpak git curl build-essential file

#
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz


# Install Visual Studio Code
echo "code code/add-microsoft-repo boolean true" | sudo debconf-set-selections
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor >packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" | sudo tee /etc/apt/sources.list.d/vscode.list >/dev/null
rm -f packages.microsoft.gpg

# Brew installation
bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install bat bun direnv fd fzf lazygit node@22 poetry pre-commit python@3.11 ripgrep virtualenv zig ghostty zsh zoxide podman


curl -sL https://aka.ms/InstallAzureCLIDeb | bash

# Install LazyVim
git clone https://github.com/LazyVim/starter ~/.config/nvim
mv ./config/lazyvim/* ~/.config/nvim/lua

# Flatpak applications
flatpak install flathub com.getpostman.Postman \
  com.discordapp.Discord \
  com.spotify.Client \
  com.slack.Slack \
  com.protonvpn.www \
  com.valvesoftware.Steam \
  io.missioncenter.MissionCenter \
  me.proton.Pass \
