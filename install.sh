#!/bin/bash
# Відновлення налаштувань на новому Mac
set -e
DOTFILES="$HOME/dotfiles"
VSCODE_USER="$HOME/Library/Application Support/Code/User"

echo "→ Програми з Homebrew"
brew bundle --file="$DOTFILES/Brewfile"

echo "→ Термінал, Git, Prettier"
ln -sf "$DOTFILES/.zshrc" "$HOME/.zshrc"
ln -sf "$DOTFILES/.gitconfig" "$HOME/.gitconfig"
ln -sf "$DOTFILES/.gitignore_global" "$HOME/.gitignore_global"
ln -sf "$DOTFILES/.prettierrc.json" "$HOME/.prettierrc.json"

echo "→ Starship"
mkdir -p "$HOME/.config"
ln -sf "$DOTFILES/.config/starship.toml" "$HOME/.config/starship.toml"

echo "→ VS Code"
mkdir -p "$VSCODE_USER"
ln -sf "$DOTFILES/vscode/settings.json" "$VSCODE_USER/settings.json"
ln -sf "$DOTFILES/vscode/keybindings.json" "$VSCODE_USER/keybindings.json"
if command -v code >/dev/null; then
  # Встановлюємо розширення зі списку; помилка одного не зупиняє решту
  while read -r ext; do
    [ -n "$ext" ] && code --install-extension "$ext" || true
  done < "$DOTFILES/vscode/extensions.txt"
else
  echo "  (команди code немає — розширення VS Code встанови пізніше)"
fi

echo ""
echo "Готово. Залишилось вручну:"
echo "  1. Двічі клацни catppuccin-mocha.terminal і зроби тему стандартною в Terminal → Settings → Profiles"
echo "  2. WebStorm → File → Manage IDE Settings → Import Settings → webstorm/settings.zip"
echo "Потім відкрий нове вікно терміналу."
