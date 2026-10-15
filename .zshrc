# ── PATH ──
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.antigravity/antigravity/bin:$PATH"
export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.cap/bin:$PATH"

# ── Історія ──
HISTFILE="$HOME/.zsh_history"
HISTSIZE=50000
SAVEHIST=50000
setopt SHARE_HISTORY          # одна історія на всі вікна
setopt HIST_IGNORE_ALL_DUPS   # без дублікатів
setopt HIST_IGNORE_SPACE      # команда з пробілом на початку не зберігається
setopt HIST_REDUCE_BLANKS     # прибирає зайві пробіли

# ── Зручності ──
setopt AUTO_CD                # назва папки = перехід у неї, без cd
setopt INTERACTIVE_COMMENTS   # можна писати # коментарі в терміналі

# ── Автодоповнення ──
FPATH="/opt/homebrew/share/zsh/site-functions:$FPATH"
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'   # великі/малі не важливі
zstyle ':completion:*' menu select                     # вибір стрілками

# ── Аліаси: файли ──
alias ls='eza --icons=auto --group-directories-first'
alias ll='eza -l --header --icons=auto --group-directories-first --git'
alias la='eza -la --header --icons=auto --group-directories-first --git'
alias lt='eza --tree --level=2 --icons=auto --git-ignore'

# ── Аліаси: мої ──
alias cs='claude-statusbar'
alias cstatus='claude-statusbar'
alias psplay="$HOME/bin/psplay.sh"
alias photo="$HOME/Desktop/Projects/avif-converter/start.command"
# ── Аліаси: git ──
alias gs='git status -sb'
alias ga='git add'
alias gaa='git add --all'
alias gc='git commit -m'
alias gp='git push'
alias gpl='git pull'
alias gd='git diff'
alias gco='git switch'
alias gcb='git switch -c'
alias glog='git log --oneline --graph --decorate -20'

# ── Інструменти ──
export BAT_THEME="ansi"       # bat бере кольори з теми терміналу
source <(fzf --zsh)           # Control+R історія, Control+T файли
eval "$(zoxide init zsh)"     # z <частина назви папки>

# ── Prompt ──
eval "$(starship init zsh)"

# ── Плагіни (syntax-highlighting завжди останній) ──
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
