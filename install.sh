#!/bin/bash

set -e

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"
CONFIG_DIR="$HOME/.config"

GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

echo -e "${GREEN}Installing dotfiles...${NC}"
echo ""

configs=(
    "hypr"
    "waybar"
    "kitty"
    "nvim"
    "wofi"
    "fish"
)

for cfg in "${configs[@]}"; do
    src="$DOTFILES_DIR/.config/$cfg"
    dst="$CONFIG_DIR/$cfg"

    if [ -d "$src" ]; then
        echo -e "  Copying ${GREEN}$cfg${NC}..."
        cp -r "$src" "$CONFIG_DIR/"
    else
        echo -e "  ${YELLOW}Skipping $cfg (not found in dotfiles)${NC}"
    fi
done

echo ""

WALLPAPER_DIR="$HOME/wallpapers"
if [ ! -d "$WALLPAPER_DIR" ]; then
    echo -e "  Creating ${GREEN}~/wallpapers/${NC} — положи сюда свои обои"
    mkdir -p "$WALLPAPER_DIR"
fi

echo ""
echo -e "${GREEN}Done!${NC}"
