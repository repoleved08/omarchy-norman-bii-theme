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

Then create `~/.config/omarchy/hooks/theme-set.d/whitesur-gnome`:

```bash
#!/bin/bash

if [[ -f ~/.config/omarchy/current/theme/light.mode ]]; then
  GTK_THEME="WhiteSur-Light-green"
else
  GTK_THEME="WhiteSur-Dark-green"
fi

gsettings set org.gnome.desktop.interface gtk-theme "$GTK_THEME"
gsettings set org.gnome.desktop.interface cursor-theme "WhiteSur-cursors"

if command -v hyprctl >/dev/null 2>&1; then
  hyprctl setcursor WhiteSur-cursors 24 >/dev/null 2>&1 || true
fi
```

```
chmod +x ~/.config/omarchy/hooks/theme-set.d/whitesur-gnome
```

## Credits

- Forked from the Omarchy **Matte Black** theme
- Wallpapers: [vinceliuice/WhiteSur-wallpapers](https://github.com/vinceliuice/WhiteSur-wallpapers)
- Icons / GTK theme / cursors: [vinceliuice/WhiteSur-gtk-theme](https://github.com/vinceliuice/WhiteSur-gtk-theme)
