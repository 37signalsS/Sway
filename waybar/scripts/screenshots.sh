#!/bin/bash

SAVE_DIR="/home/q/Изображения/screenshots"

mkdir -p "$SAVE_DIR"

TMP_FILE="/tmp/screenshot.png"

FINAL_FILE="${SAVE_DIR}/$(date +'%H:%M_%d.%m.%Y').png"

grim -g "$(slurp)" "$TMP_FILE" && swappy -f "$TMP_FILE" -o "$FINAL_FILE"

[[ -f "$TMP_FILE" ]] && rm "$TMP_FILE"
