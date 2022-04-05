# Chillin' Everforest vibes

## Used software

Here is a list of the used software for these dotfiles

- **Window manager**: [`i3-gaps`](https://github.com/Airblader/i3)
- **Compositor**: [`picom(ibhagwan fork)`](https://github.com/ibhagwan/picom) Because rounded corners >
- **Terminal**: [`kitty`](https://github.com/kovidgoyal/kitty) Best Terminal in existence, change my mind
- **Bar**: [`polybar`](https://github.com/polybar/polybar) Need to change it to `tint2` though
- **Launcher**: [`rofi`](https://github.com/davatorium/rofi) With some scripts I found
- **Notifications**: [`dunst`](https://github.com/dunst-project/dunst)
- **Editor**: [`neovim`](https://github.com/neovim/neovim) with a lot of extensions all with custom keybinds

### Installation

**Arch:**

```
// install all the required stuff
pacman -S i3-gaps kitty rofi dunst neovim 

// Install stuff from AUR
paru -S picom-ibhagwan-git polybar oft-nerd-fonts-fira-code nerd-fonts-fira-code ttf-font-awesome
```

Basically you just copy paste all configs whereever you need them. In `rofi` you need to copy the `rofi-power-menu` to `/usr/bin/`

