#!/bin/bash

THEME_NAME="$1"
THEME_DIR="$HOME/themes/$THEME_NAME"
WALLPAPER=$(find "$THEME_DIR" -iname 'wallpaper.*' | head -n 1)

if [ ! -d "$THEME_DIR" ]; then 
	echo "$THEME_NAME was not found"
	exit 1
fi

sleep 0.2

swww img "$WALLPAPER" --transition-type any --transition-fps 60 --transition-duration 1 --resize fit

wal --cols16 -i "$WALLPAPER"
kitty @ set-colors --all --configured ~/.cache/wal/colors-kitty.conf

ln -sf "$THEME_DIR/waybar/style.css" "$HOME/.config/waybar/style.css"
ln -sf "$THEME_DIR/fastfetch/config.jsonc" "$HOME/.config/fastfetch/config.jsonc"
ln -sf "$THEME_DIR/wlogout/style.css" "$HOME/.config/wlogout/style.css"
ln -sf "$THEME_DIR/hypr/hyprlock.conf" "$HOME/.config/hypr/hyprlock.conf"
ln -sf "$WALLPAPER" "$HOME/.config/hypr/"

pkill waybar && waybar &


echo "Theme changed succesfully! Set $THEME_NAME"
