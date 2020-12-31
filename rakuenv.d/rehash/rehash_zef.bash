#!/usr/bin/env bash
set -e

ZEF_SHIM_PATH="$SHIM_PATH/zef"

command -p cat > "$ZEF_SHIM_PATH" <<SH
#!/usr/bin/env bash
set -e
[ -n "\$RAKUENV_DEBUG" ] && set -x

program="\${0##*/}"

export RAKUENV_ROOT="$RAKUENV_ROOT"
"$(command -v rakuenv)" exec "\$program" "\$@"
rc=\$?
for arg in \$@
do
  case \$arg in
    'install'|'update'|'upgrade')
      "$(command -v rakuenv)" rehash
    ;;
  esac
done
exit \$rc
SH

command -p chmod +x "$ZEF_SHIM_PATH"
