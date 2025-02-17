# Install zed
curl -f https://zed.dev/install.sh | sh

# Install Azure CLI
curl -sL https://aka.ms/InstallAzureCLIDeb | bash

# Install Visual Studio Code
echo "code code/add-microsoft-repo boolean true" | sudo debconf-set-selections
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor >packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" | sudo tee /etc/apt/sources.list.d/vscode.list >/dev/null
rm -f packages.microsoft.gpg

# Install LazyVim
git clone https://github.com/LazyVim/starter ~/.config/nvim
mv ./config/lazyvim/* ~/.config/nvim/lua
