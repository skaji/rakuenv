if [[ ! -o interactive ]]; then
    return
fi

compctl -K _rakuenv rakuenv

_rakuenv() {
  local words completions
  read -cA words

  if [ "${#words}" -eq 2 ]; then
    completions="$(rakuenv commands)"
  else
    completions="$(rakuenv completions ${words[2,-2]})"
  fi

  reply=("${(ps:\n:)completions}")
}
