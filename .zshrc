# Add deno completions to search path
if [[ ":$FPATH:" != *":/home/jc/.zsh/completions:"* ]]; then export FPATH="/home/jc/.zsh/completions:$FPATH"; fi
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
. "/home/jc/.deno/env"
# Initialize zsh completions (added by deno install script)
autoload -Uz compinit
compinit