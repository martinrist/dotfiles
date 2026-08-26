# Bash completion for the worktree aliases (wtrm, wtc, wtls, wtup).
# Worktree names are the directory names under $JOIIN_HOME/../worktrees/.

_wt_names() {
  [ -d "$JOIIN_WORKTREES" ] || return 0
  local wt
  for wt in "$JOIIN_WORKTREES"/*/; do
    [ -d "$wt" ] || continue
    basename "$wt"
  done
}

_wt_names_old() {
  local worktrees_dir="$JOIIN_HOME/../worktrees"
  [ -d "$worktrees_dir" ] || return 0
  local wt
  for wt in "$worktrees_dir"/*/; do
    [ -d "$wt" ] || continue
    basename "$wt"
  done
}

_wtrm_complete() {
  local cur="${COMP_WORDS[COMP_CWORD]}"
  local names
  names="$(_wt_names)"
  COMPREPLY=( $(compgen -W "$names" -- "$cur") )
}

complete -F _wtrm_complete wtrm
complete -F _wtrm_complete wtcd
