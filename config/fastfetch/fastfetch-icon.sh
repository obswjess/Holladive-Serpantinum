#!/bin/bash

# Configuration Paths
WALLPAPER_FILE="$HOME/.cache/serpantinum/wallpaper/current_DP-2_name" # Path to the file containing the wallpaper name/path
ICON_DIR="$HOME/.config/fastfetch/icons"        # Where your matching icons live
SYMLINK_PATH="$HOME/.config/fastfetch/current_logo.png"

# 1. Read the wallpaper string from the target file
if [ ! -f "$WALLPAPER_FILE" ]; then
    echo "Error: Wallpaper tracking file not found at $WALLPAPER_FILE"
    exit 1
fi

WALLPAPER_STR=$(cat "$WALLPAPER_FILE")

# 2. Extract just the filename + extension (e.g., removes /path/to/ if it's an absolute path)
FILE_NAME=$(basename "$WALLPAPER_STR")

# 3. Construct the matching icon path
MATCHING_ICON="$ICON_DIR/$FILE_NAME"

# 4. Check if the matching icon exists, update symlink, or fallback
if [ -f "$MATCHING_ICON" ]; then
    ln -sf "$MATCHING_ICON" "$SYMLINK_PATH"
    echo "Fastfetch logo updated to match: $FILE_NAME"
else
    echo "Warning: No matching icon found at $MATCHING_ICON"
    # Optional: Link a default logo if the specific one is missing
    # ln -sf "$ICON_DIR/default.png" "$SYMLINK_PATH"
fi
