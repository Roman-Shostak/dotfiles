# dotfiles

My macOS development setup: terminal, Git, editors and code style.
One command restores everything on a new Mac.

## What's inside

| File | What it does |
|---|---|
| `.zshrc` | Zsh config: history, completion, aliases, Starship prompt, plugins |
| `.config/starship.toml` | [Starship](https://starship.rs) prompt theme |
| `catppuccin-mocha.terminal` | Catppuccin Mocha theme for macOS Terminal.app |
| `.gitconfig` | Git defaults, [delta](https://github.com/dandavison/delta) diffs, `zdiff3` merge conflicts |
| `.gitignore_global` | Files Git ignores in every project |
| `.prettierrc.json` | Global [Prettier](https://prettier.io) code style |
| `Brewfile` | Apps and CLI tools installed via Homebrew |
| `vscode/` | VS Code settings, keybindings and extension list |
| `webstorm/settings.zip` | WebStorm settings export: theme, fonts, code style, keymap |
| `install.sh` | Links everything into place |

## Install on a new Mac

1. Install [Homebrew](https://brew.sh):
   ```bash
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
   ```
2. Clone the repo and run the installer:
   ```bash
   git clone https://github.com/Roman-Shostak/dotfiles.git ~/dotfiles
   cd ~/dotfiles && ./install.sh
   ```
3. Finish two things by hand:
   - **Terminal theme:** double-click `catppuccin-mocha.terminal`, then set it as default in Terminal → Settings → Profiles.
   - **WebStorm:** File → Manage IDE Settings → Import Settings → `webstorm/settings.zip`.

Config files are symlinked, not copied, so every change is tracked by Git automatically.

## Terminal highlights

- **Starship** prompt with Git status
- **eza** instead of `ls`, with icons and Git info (`ll`, `la`, `lt` for a tree)
- **fzf**: `⌃R` searches history, `⌃T` searches files
- **zoxide**: `z part-of-folder-name` jumps to any folder you've visited
- **zsh-autosuggestions** and **zsh-syntax-highlighting**

Git shortcuts:

| Alias | Command |
|---|---|
| `gs` | `git status -sb` |
| `gaa` | `git add --all` |
| `gc "msg"` | `git commit -m "msg"` |
| `gp` / `gpl` | `git push` / `git pull` |
| `gco` / `gcb` | `git switch` / `git switch -c` |
| `glog` | compact graph of the last 20 commits |

## Editors

- **WebStorm** (main IDE): Catppuccin Mocha theme, JetBrains Mono font
- **VS Code**: JetBrains Mono with ligatures, format on save with Prettier, Emmet in JSX

## Code style

Prettier: 2 spaces, single quotes, semicolons, trailing commas, 80-character lines
(120 for HTML, double quotes in CSS and YAML).
