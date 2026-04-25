#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"
PROJECT_DIR="$(pwd)"
OPENCODE_DIR="$PROJECT_DIR/.opencode"

ensure_directory_copy() {
  local source_path="$1"
  local target_path="$2"

  if [ -e "$target_path" ] || [ -L "$target_path" ]; then
    printf 'Skipping existing path: %s\n' "$target_path"
    return 0
  fi

  cp -R "$source_path" "$target_path"
}

mkdir -p "$OPENCODE_DIR"
mkdir -p "$OPENCODE_DIR/skills"

cp "$SCRIPT_DIR/opencode.json" "$PROJECT_DIR/opencode.json"

ensure_directory_copy "$SCRIPT_DIR/agents" "$OPENCODE_DIR/agents"
ensure_directory_copy "$SCRIPT_DIR/commands" "$OPENCODE_DIR/commands"

touch "$OPENCODE_DIR/skills/.gitkeep"

printf 'AI workflow installed in %s\n' "$PROJECT_DIR"
