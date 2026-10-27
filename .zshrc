export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"


plugins=(
  git
  sudo
  extract
  docker
  docker-compose
  zsh-autosuggestions
  zsh-syntax-highlighting
)


source $ZSH/oh-my-zsh.sh

eval "$(starship init zsh)"
export PATH="$HOME/.local/bin:$PATH"


# ==========================================
# Atalhos de edição do terminal - Zsh
# ==========================================

# Apagar a palavra anterior: Ctrl + Backspace
bindkey '^H' backward-kill-word
bindkey '^[[3;5~' backward-kill-word

# Apagar a palavra seguinte: Ctrl + Delete
bindkey '^[[3;3~' kill-word

# Apagar até o início da linha: Ctrl + U
bindkey '^U' backward-kill-line

# Apagar até o final da linha: Ctrl + K
bindkey '^K' kill-line

# Navegar para o início e fim da linha
bindkey '^A' beginning-of-line
bindkey '^E' end-of-line

# Navegar palavra por palavra
bindkey '^[[1;5D' backward-word
bindkey '^[[1;5C' forward-word

# Alt + Backspace: apagar palavra anterior
bindkey '^[^?' backward-kill-word

