# ✨ OVIWrite macOS Installer (Apple Silicon)

This repository contains a full installation and uninstallation script for setting up [OVIWrite](https://github.com/MiragianCycle/OVIWrite) — a Neovim-based writing environment — on **macOS (Apple Silicon only)**.

> 🧠 OVIWrite was created by **Theena Kumaragurunathan**.  
> This installer was adapted by a community contributor to improve beginner accessibility and resolve some macOS-specific issues.

---

## 📥 Full Installation (Recommended)

Run the following command in your terminal:

```bash
curl -fsSL https://raw.githubusercontent.com/yourusername/oviwrite-macos-installer/main/install_oviwrite_macos.sh | bash
```

This will install:

- Neovim + Git + Pandoc + Yarn + FZF + Ripgrep + Python + Node.js
- Python support for Neovim (`pynvim`, `neovim-remote`)
- LaTeX (BasicTeX + essential packages via `tlmgr`)
- Hack Nerd Font (for proper glyph support)
- Neovide (GUI frontend for Neovim)
- OVIWrite config in `~/.config/nvim`
- Path setup via `~/.zprofile`

---

## 🧹 Uninstall OVIWrite + Dependencies

To fully remove OVIWrite and related packages:

```bash
curl -fsSL https://raw.githubusercontent.com/yourusername/oviwrite-macos-installer/main/uninstall_oviwrite_macos.sh | bash
```

Removes:

- OVIWrite Neovim config
- Packages installed by Homebrew
- Fonts and GUI (Neovide)
- PATH entries from `~/.zprofile`

---

## ⚙️ System Requirements

- macOS 12 or later
- Apple Silicon (M1/M2/M3)
- Zsh shell (default on recent macOS versions)

---

## 🗒 Notes

- Fonts: Hack Nerd Font will be installed, but you must set it in terminal preferences manually.
- LaTeX: BasicTeX + common dependencies will be installed via `tlmgr`.
- Python tools are installed using `--user`, avoiding global changes.

---

## 📄 License (MIT)

MIT License

Copyright (c) 2025

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell     
copies of the Software, and to permit persons to whom the Software is         
furnished to do so, subject to the following conditions:                      

The above copyright notice and this permission notice shall be included in    
all copies or substantial portions of the Software.                           

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR    
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,      
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE   
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER        
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, 
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN     
THE SOFTWARE.