#!/bin/bash

set -e

echo "🍺 Installing Homebrew (if not installed)..."
if ! command -v brew &> /dev/null; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

echo '💻 Configuring Homebrew environment for Apple Silicon...'
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

echo "🔄 Updating Homebrew..."
brew update

echo "📦 Installing core packages..."
brew install neovim git pandoc wget yarn fzf ripgrep python node

echo "🐍 Installing Python support for Neovim (PEP 668 workaround)..."
pip3 install --user --break-system-packages pynvim neovim-remote

echo 'export PATH="$HOME/Library/Python/3.*/bin:$PATH"' >> ~/.zprofile
source ~/.zprofile

echo "📚 Installing BasicTeX, LaTeX dependencies, and Skim PDF Viewer..."
brew install --cask basictex skim

echo 'export PATH="/Library/TeX/texbin:$PATH"' >> ~/.zprofile
source ~/.zprofile

echo "🧹 Updating and installing LaTeX packages via tlmgr..."
sudo tlmgr update --self --all
sudo tlmgr install collection-fontsrecommended latexmk amsmath hyperref pdftex

echo "🔠 Installing Nerd Font (Hack)..."
brew install --cask font-hack-nerd-font

echo "🖥️ Installing Neovide GUI..."
brew install --cask neovide

echo "📁 Cloning OVIWrite into Neovim config..."
git clone https://github.com/ezekielcroe/OVIWrite.git ~/.config/nvim

echo "✅ Installation complete!"
echo "👉 Please restart your terminal or run: source ~/.zprofile"
echo "🔧 Then launch OVIWrite with: nvim or neovide"
