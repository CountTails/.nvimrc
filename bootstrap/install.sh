#! /bin/bash

SRC="$(git rev-parse --show-toplevel)/config"
DST="$HOME/.config/nvim"
FORCE=false

# Parse the `--force` option
case "${1:-}" in
--force)
    FORCE=true
    shift
    ;;
esac

# Check for an existing $DST and remove if `--force` is specified
if [[ -d "$DST" && "$FORCE" != false ]]; then
    echo "Warning: $DST already exists and was asked for be forcefully removed with --force"
    rm -rf $DST
fi

# Create $DST if it does not exist
if [[ ! -d "$DST" ]]; then
    echo "$DST does not exist; creating..."

    if ! mkdir -vp -- "$DST"; then
        echo "Error: failed to create directory"
        exit 1
    fi
fi

# Check that $DST is an empty directory
if [ ! -z "$(ls -A $DST)" ]; then
    echo "Error: directory is not empty"
    exit 1
fi

# Copy the configuration to $DST
if ! cp -a -- "$SRC/." "$DST"; then
    echo "Error: could not copy $SRC to $DST" >&2
    exit 1
fi

echo "OK: successfully installed the configuration to $DST"
exit 0
