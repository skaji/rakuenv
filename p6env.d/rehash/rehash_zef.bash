#!/usr/bin/env bash
set -e

ZEF_SHIM_PATH="$SHIM_PATH/zef"

command -p cat > "$ZEF_SHIM_PATH" <<SH
#!/usr/bin/env bash
set -e
[ -n "\$P6ENV_DEBUG" ] && set -x

program="\${0##*/}"

export P6ENV_ROOT="$P6ENV_ROOT"
"$(command -v p6env)" exec "\$program" "\$@"
rc=\$?
for arg in \$@
do
  case \$arg in
    'install'|'update'|'upgrade')
      "$(command -v p6env)" rehash
    ;;
  esac
done
exit \$rc
SH

command -p chmod +x "$ZEF_SHIM_PATH"
