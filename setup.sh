#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"
OPENCODE_DIR="$HOME/.config/opencode"

ensure_symlink() {
  local source_path="$1"
  local target_path="$2"

  if [ -e "$target_path" ] || [ -L "$target_path" ]; then
    printf 'Skipping existing path: %s\n' "$target_path"
    return 0
  fi

  ln -s "$source_path" "$target_path"
}

mkdir -p "$OPENCODE_DIR"

ensure_symlink "$SCRIPT_DIR/agents" "$OPENCODE_DIR/agents"
ensure_symlink "$SCRIPT_DIR/commands" "$OPENCODE_DIR/commands"
ensure_symlink "$SCRIPT_DIR/skills" "$OPENCODE_DIR/skills"
ensure_symlink "$SCRIPT_DIR/opencode.json" "$OPENCODE_DIR/opencode.json"

printf 'OpenCode config installed in %s\n' "$OPENCODE_DIR"
