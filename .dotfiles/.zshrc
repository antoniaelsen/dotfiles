#!/usr/bin/env zsh

##############################################################################
# Oh-My-Zsh
##############################################################################
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
  docker
  docker-compose
  heroku
  git
  git-commit
  zsh-256color
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh


##############################################################################
# Dotfiles
##############################################################################
for file in ~/.{path,exports,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

##############################################################################
# History
##############################################################################
HISTSIZE=5000               # How many lines of history to keep in memory
HISTFILE=~/.zsh_history     # Where to save history to disk
SAVEHIST=5000               # Number of history entries to save to disk
setopt    appendhistory     # Append history to the history file (no overwriting)
setopt    sharehistory      # Share history across terminals
setopt    incappendhistory  # Immediately append to the history file, not just when a term is killed


##############################################################################
# Prompt
##############################################################################
## Highlight the user name when logged in as root.
if [[ "${USER}" == "root" ]]; then
	user_style="%F{red}";
else
	user_style="%F{166}";
fi;

## Highlight the hostname when connected via SSH.
if [[ "${SSH_TTY}" ]]; then
	host_style="%F{red}";
  dir_style="%F{095}";
else
	host_style="%F{yellow}";
  dir_style="%F{green}";
fi;

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

##############################################################################
# Other
##############################################################################
