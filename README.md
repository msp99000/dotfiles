# MacOS Dotfiles

A comprehensive terminal environment setup for macOS, featuring iTerm2, Zsh with Oh-My-Zsh, Powerlevel10k theme, Neovim, and Tmux.

## Overview

This repository contains my personal dotfiles and configuration scripts for creating a powerful and visually appealing development environment. It's designed for macOS users who want a fully-featured terminal setup with minimal manual configuration.

## Features

- iTerm2 with custom color scheme (Coolnight)
- Zsh shell with Oh-My-Zsh framework
- Powerlevel10k theme for a customizable prompt
- Neovim setup for advanced text editing
- Tmux configuration for terminal multiplexing

## Installation Guide

Follow these steps to set up the environment on your macOS system:

### 1. Install Homebrew

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### 2. Install required packages

```bash
brew install iterm2 zsh tmux neovim
```

### 3. Install Oh My Zsh

```bash
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### 4. Clone this repository

```bash
git clone https://github.com/dotfiles/dotfiles.git
cd dotfiles
```

### 5. Set up iTerm2

- Open iTerm2
- Go to Preferences > Profiles > Colors
- Import the `coolnight.itermcolors` file
- Go to Preferences > Profiles > Text
- Import the `iTerm2 config.itermexport` file

### 6. Set up Zsh

```bash
cp .zshrc ~/.zshrc
cp .p10k.zsh ~/.p10k.zsh
```

### 7. Install Powerlevel10k

```bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

Ensure the ZSH_THEME is set to "powerlevel10k/powerlevel10k" in your ~/.zshrc

### 8. Set up Neovim

```bash
mkdir -p ~/.config/nvim
cp -R nvim/* ~/.config/nvim/
```

Install a plugin manager like vim-plug and run `:PlugInstall` in Neovim.

### 9. Set up Tmux

```bash
cp tmux/.tmux.conf ~/.tmux.conf
```

### 10. Restart your terminal

Close and reopen your terminal or run:

```bash
source ~/.zshrc
```

## Additional Configuration

### Nerd Fonts

For the best experience with Powerlevel10k, install a Nerd Font:

```bash
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font
```

Then, set this font in iTerm2 (Preferences > Profiles > Text > Font).

### Neovim Plugins

Check the `init.vim` or `init.lua` file in the `nvim` directory for the list of plugins and their configurations. You may need to install additional language servers or tools depending on your development needs.

### Customization

Feel free to explore and modify the configuration files to suit your preferences. The beauty of dotfiles is in their personalization!

## Troubleshooting

- If you encounter any issues with Powerlevel10k glyphs, ensure you've set up a Nerd Font correctly in iTerm2.
- For Neovim plugin issues, try running `:checkhealth` within Neovim for diagnostics.
- If Tmux key bindings aren't working, make sure iTerm2 is configured to treat Option key as Esc+.

## Contributing

Contributions to improve these dotfiles are welcome! Please feel free to submit pull requests or open issues for suggestions and bug reports.

## License

This project is licensed under the Apache-2.0 License - see the [LICENSE](LICENSE) file for details.
