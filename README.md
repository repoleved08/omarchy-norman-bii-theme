# Norman Bii

A macOS-inspired Omarchy theme forked from the stock **Matte Black** theme: green accent (`#30d158`), the macOS system ANSI palette, WhiteSur Big Sur wallpapers, and WhiteSur macOS-style icons.

![preview](preview.png)

## Install

```sh
omarchy theme install https://github.com/repoleved08/omarchy-norman-bii-theme.git
```

or via the Omarchy menu: `Super + Alt + Space` → Install > Style > Theme.

## Requirements (full macOS look)

The theme sets `icons.theme` to `WhiteSur-dark`. For the matching GTK look, icons, and cursors, install the WhiteSur packages and add the theme-set hook:

```sh
omarchy pkg aur add whitesur-icon-theme-git whitesur-gtk-theme-git whitesur-cursor-theme-git
```

Then copy the included theme-set hook into place (it applies the WhiteSur GTK theme + cursor on every theme set):

```sh
cp extras/theme-set.d/whitesur-gnome ~/.config/omarchy/hooks/theme-set.d/
chmod +x ~/.config/omarchy/hooks/theme-set.d/whitesur-gnome
```

## Credits

- Forked from the Omarchy **Matte Black** theme
- Wallpapers: [vinceliuice/WhiteSur-wallpapers](https://github.com/vinceliuice/WhiteSur-wallpapers)
- Icons / GTK theme / cursors: [vinceliuice/WhiteSur-gtk-theme](https://github.com/vinceliuice/WhiteSur-gtk-theme)
