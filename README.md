# Norman Bii

A macOS-inspired Omarchy theme forked from the stock **Matte Black** theme: green accent (`#30d158`), the macOS system ANSI palette, WhiteSur Big Sur wallpapers, and WhiteSur macOS-style icons.

![preview](preview.png)

## Install

```sh
omarchy theme install https://github.com/repoleved08/omarchy-norman-bii-theme.git
```

or via the Omarchy menu: `Super + Alt + Space` → Install > Style > Theme.

## Requirements (full macOS look)

The theme sets `icons.theme` to `WhiteSur-green-dark` (green-accented folders). For the matching GTK look, icons, and cursors, install the WhiteSur packages and add the theme-set hook:

```sh
omarchy pkg aur add whitesur-icon-theme-git whitesur-gtk-theme-git whitesur-cursor-theme-git
```

Then generate the green icon variant (user-local, no sudo):

```sh
git clone --depth 1 https://github.com/vinceliuice/WhiteSur-icon-theme /tmp/WhiteSur-icon-theme
bash /tmp/WhiteSur-icon-theme/install.sh -t green
```

Then copy the included theme-set hooks into place (they apply the WhiteSur GTK theme/cursor and translucent terminals on every theme set):

```sh
cp extras/theme-set.d/whitesur-gnome extras/theme-set.d/terminal-transparency ~/.config/omarchy/hooks/theme-set.d/
chmod +x ~/.config/omarchy/hooks/theme-set.d/whitesur-gnome ~/.config/omarchy/hooks/theme-set.d/terminal-transparency
```

## Hacker look

- `btop.theme` is a matrix-style green-on-black palette
- Wallpapers include two Matrix/terminal-code backgrounds (`4-matrix.jpg`, `5-matrix-rain.jpg`) — cycle with `omarchy theme bg next`
- Neon green Hyprland window border + green glow: set in `~/.config/hypr/looknfeel.conf` under `general.col.active_border` and `decoration.shadow`
- Green starship prompt (`❯`) and green fastfetch keys

## Credits

- Forked from the Omarchy **Matte Black** theme
- Wallpapers: [vinceliuice/WhiteSur-wallpapers](https://github.com/vinceliuice/WhiteSur-wallpapers), Matrix wallpapers from [WallpaperCave](https://wallpapercave.com/matrix-wallpapers)
- Icons / GTK theme / cursors: [vinceliuice/WhiteSur-gtk-theme](https://github.com/vinceliuice/WhiteSur-gtk-theme)
