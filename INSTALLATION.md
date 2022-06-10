# Installation

This document describes the whole installation process of my Arch environment.

## 1.) Basic Setup

1. Install Arch ([Guide](https://wiki.archlinux.org/title/Installation_guide))
2. Install `sudo`, switch to new main user and give him `sudo` permissions
3. Switch from `pacman` to `yay`

## 2.) Environment Barebone Setup

1. Install `xorg-server`, corresponding [display drivers](https://wiki.archlinux.org/title/Xorg#Driver_installation) and `xorg-xinit`
2. Install `i3-gaps`, `i3lock` and `ttf-ms-fonts`
3. Create a `~/.xinitrc` file with the following contents:
    ```
    setxkbmap de
    exec dbus-launch i3
    ```
4. To enable audio install `pulseaudio` (audio server) and `pavucontrol` (PulseAudio management utility)
5. Install `git` and `openssh`
6. Install `neovim` and `code` (editors)
    * To enable the Visual Studio Code marketplace install `code-marketplace`
7. Install `chromium` (web browser)
    * To set it as the default browser install `xdg-utils` and run `xdg-settings set default-web-browser chromium.desktop`
8. Install `p7zip` (zip utility)
9. Install `ranger` (file manager)

## 3.) Customization Process

1. Install `nerd-fonts-complete` and `alacritty` (terminal emulator)
2. Install `zsh`, [`oh-my-zsh`](https://github.com/ohmyzsh/ohmyzsh#basic-installation) and [`powerlevel10k`](https://github.com/romkatv/powerlevel10k#oh-my-zsh)
    * Customized by [enabling permanent context display](https://github.com/romkatv/powerlevel10k#how-do-i-add-username-andor-hostname-to-prompt) and installing [`zsh-syntax-highlighting`](https://github.com/zsh-users/zsh-syntax-highlighting) and [`zsh-autosuggestions`](https://github.com/zsh-users/zsh-autosuggestions)
3. Install `xorg-xrandr` (used for multiple displays)
4. Install `ueberzug` (used for `ranger` image preview)
5. Install `montserrat-ttf`, `ttf-font-awesome` and `polybar`
6. Install `picom-git` (not `picom` as the official package does not support the used blur algorithm yet)
7. Install `dunst` for notifications
8. Install `rofi` as application launcher
9. Install `feh` to display the background
10. Install [`vim-plug`](https://github.com/junegunn/vim-plug#unix-linux) as neovim plugin manager
11. Copy the dotfiles (leave out `.oh-my-zsh/custom/aliases.zsh` if replacements are not wished/installed)
    * `.config/nvim/lua/user/lsp.lua` contains several LSP configurations that may fail without those languages & language servers installed

## 4.) Recommended Replacements

The repository contains a `.oh-my-zsh/custom/aliases.zsh` file which defines some aliases to replacement utilities I personally can recommend.

* `cat` -> [`bat`](https://github.com/sharkdp/bat)
* `ls` -> [`lsd`](https://github.com/Peltoche/lsd)
* `du` -> [`dust`](https://github.com/bootandy/dust)
* `df` -> [`duf`](https://github.com/muesli/duf)
* `tree` -> [`broot`](https://github.com/Canop/broot)
* `find` -> [`fd`](https://github.com/sharkdp/fd)
* `grep` -> [`ripgrep`](https://github.com/BurntSushi/ripgrep)
* `sed` -> [`sd`](https://github.com/chmln/sd)
* `man` -> [`tldr`](https://github.com/tldr-pages/tldr)
* `ps` -> [`procs`](https://github.com/dalance/procs)
* `dig` -> [`dog`](https://github.com/ogham/dog)

## 5.) Additional Utilities

* [`bashtop`](https://github.com/aristocratos/bashtop) (system monitor)
* [`cowsay`](https://github.com/piuccio/cowsay) and [`fortune-mod`](https://github.com/shlomif/fortune-mod) (lol)
* [`fzf`](https://github.com/junegunn/fzf) (fuzzy finder)
* [`jq`](https://github.com/stedolan/jq) (command line JSON processor)
* [`neofetch`](https://github.com/dylanaraps/neofetch) and [`lolcat`](https://github.com/busyloop/lolcat) (fancy system overview)
* [`flameshot`](https://github.com/flameshot-org/flameshot) (screenshot tool)
* [`hyperfine`](https://github.com/sharkdp/hyperfine) (command benchmark tool)
* [`simplescreenrecorder`](https://github.com/MaartenBaert/ssr) (screen recording tool)
