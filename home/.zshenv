[[ -f $HOME/.zshenv-local ]] && source $HOME/.zshenv-local

export FZF_DEFAULT_OPTS='--reverse --border --exact --height=50%'
export FZF_ALT_C_COMMAND='fd --type directory'
[[ $OSTYPE =~ ^darwin.* ]] && export FZF_CTRL_T_COMMAND="mdfind -onlyin . -name ."

. "$HOME/.cargo/env"