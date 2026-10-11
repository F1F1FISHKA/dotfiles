#!/bin/bash

# Папка, где лежит репозиторий
DOTFILES="$HOME/dotfiles"

# Создаём ~/.config, если её нет
mkdir -p "$HOME/.config"

# Создаём симлинки
ln -sf "$DOTFILES/hypr"   "$HOME/.config/hypr"
ln -sf "$DOTFILES/kitty"  "$HOME/.config/kitty"
ln -sf "$DOTFILES/waybar" "$HOME/.config/waybar"

echo "Симлинки созданы:"
echo "  ~/.config/hypr   → $DOTFILES/hypr"
echo "  ~/.config/kitty  → $DOTFILES/kitty"
echo "  ~/.config/waybar → $DOTFILES/waybar"
