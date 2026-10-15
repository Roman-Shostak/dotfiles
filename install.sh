#!/bin/bash
# Відновлення налаштувань на новому Mac
set -e
DOTFILES="$HOME/dotfiles"

brew bundle --file="$DOTFILES/Brewfile"

ln -sf "$DOTFILES/.zshrc" "$HOME/.zshrc"
ln -sf "$DOTFILES/.gitconfig" "$HOME/.gitconfig"
mkdir -p "$HOME/.config"
ln -sf "$DOTFILES/.config/starship.toml" "$HOME/.config/starship.toml"

echo "Готово. Відкрий нове вікно терміналу і імпортуй тему .terminal подвійним кліком."
