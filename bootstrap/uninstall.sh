#! /bin/bash

CONFIG="$HOME/.config/nvim"
SHARE="$HOME/.local/share/nvim"
STATE="$HOME/.local/state/nvim"
FORCE=false
TARGETS=(
    $CONFIG
    $SHARE
    $STATE
)

# Parse the `--force` option
case "${1:-}" in
--force)
    FORCE=true
    shift
    ;;
esac

# Require confirmation unless explicitly skipped
if [[ $FORCE != true ]]; then
    printf 'Warning: the following directories will be removed permanently:\n\t%s\n\t%s\n\t%s\nContinue? [y/N]? ' "$CONFIG" "$SHARE" "$STATE"
    read -r confirmation

    case "$confirmation" in
    y | Y | yes | YES | Yes)
        ;;
    *)
        echo "Operation cancelled"
        exit 1
        ;;
    esac
fi

for dir in $TARGETS; do
    if ! rm -rf -- "$dir"; then
        echo "Error: failed to remove dir ($dir)"
        exit 1
    fi
done

echo "OK: configuration successfully removed"
exit 1
