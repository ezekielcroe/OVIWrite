#!/bin/bash

set -e

confirm() {
  read -p "$1 [y/N]: " response
  [[ "$response" =~ ^[Yy]$ ]]
}

echo "🗑️ Removing OVIWrite configuration..."
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
rm -rf ~/.cache/nvim
rm -rf ~/.config/nvim-lazy

echo "🧹 Cleaning user Python packages for Neovim..."
pip3 uninstall -y pynvim neovim-remote || true
rm -rf ~/Library/Python/3.*/lib/python*/site-packages/pynvim*
rm -rf ~/Library/Python/3.*/lib/python*/site-packages/neovim_remote*
rm -f ~/Library/Python/3.*/bin/nvr*

echo "🧽 Cleaning .local Python bin/lib (if exists)..."
rm -rf ~/.local/lib/python*
rm -rf ~/.local/bin/nvr
rm -rf ~/.local/bin/pynvim

if confirm "Remove Neovim (brew)?"; then
  brew uninstall --ignore-dependencies neovim || true
fi

if confirm "Remove Neovide (GUI for Neovim)?"; then
  brew uninstall --cask neovide || true
fi

if confirm "Remove Hack Nerd Font?"; then
  brew uninstall --cask font-hack-nerd-font || true
fi

if confirm "Remove Skim PDF Viewer?"; then
  brew uninstall --cask skim || true
fi

if confirm "Remove LaTeX (BasicTeX) and all packages?"; then
  sudo tlmgr uninstall --all || true
  brew uninstall --cask basictex || true
  sudo rm -rf /usr/local/texlive
  sudo rm -rf /usr/local/bin/tex*
  sudo rm -rf /Library/TeX
fi

if confirm "Remove Node.js and Yarn?"; then
  brew uninstall --ignore-dependencies node yarn || true
fi

if confirm "Remove other utilities (fzf, ripgrep, git, wget, pandoc)?"; then
  brew uninstall --ignore-dependencies fzf ripgrep git wget pandoc || true
fi

echo "🧼 Removing environment lines from ~/.zprofile..."
sed -i '' '/brew shellenv/d' ~/.zprofile
sed -i '' '/texbin/d' ~/.zprofile
sed -i '' '/Python.*bin/d' ~/.zprofile

echo "🧹 Uninstall complete."
echo "👉 You may want to manually restart your terminal or reload your shell with: source ~/.zprofile"
