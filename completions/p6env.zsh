if [[ ! -o interactive ]]; then
    return
fi

compctl -K _p6env p6env

_p6env() {
  local words completions
  read -cA words

  if [ "${#words}" -eq 2 ]; then
    completions="$(p6env commands)"
  else
    completions="$(p6env completions ${words[2,-2]})"
  fi

  reply=("${(ps:\n:)completions}")
}
