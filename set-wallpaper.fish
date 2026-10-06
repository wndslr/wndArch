#!/usr/bin/env fish

set wallpaper_dir $HOME/wallpapers/

set wallpapers (find $wallpaper_dir -type f \( -iname "*.jpg" -o -iname "*.png" \) | sort)

if test (count $wallpapers) -eq 0
    echo "Нет обоев в папке $wallpaper_dir"
    exit 1
end

set random_wallpaper (printf '%s\n' $wallpapers | shuf -n1)

awww img $random_wallpaper \
    --transition-type any \
    --transition-pos 0.5,0.5 \
    --transition-fps 60 \
    --transition-duration 1
