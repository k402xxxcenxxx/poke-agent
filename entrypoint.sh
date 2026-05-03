#!/usr/bin/env bash
set -e

ANIM_DIR="/init_animation/frames"

printf '\033[?1049h'   # alternate screen
printf '\033[?25l'     # hide cursor
printf '\033[?7l'      # disable line wrap

if [ -d "$ANIM_DIR" ]; then
  echo "[Agent Sandbox] Playing init animation..."
  for frame in "$ANIM_DIR"/*; do
    printf '\033[H\033[2J'
    cat "$frame"
    sleep 0.04
  done
else
  echo "[WARN] animation frames not found"
  sleep 1
fi

clear

printf '\033[?7h'
printf '\033[?25h'
printf '\033[?1049l'


exec "$@"