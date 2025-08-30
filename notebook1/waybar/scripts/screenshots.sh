#!/bin/bash

SAVE_DIR="/home/q/Изображения/screenshots"
mkdir -p "$SAVE_DIR"

TIMESTAMP=$(date +'%H:%M_%d.%m.%Y')
ORIGINAL_FINAL_FILE="${SAVE_DIR}/${TIMESTAMP}.png"
EDITED_FINAL_FILE="${SAVE_DIR}/${TIMESTAMP}_edited.png"

ORIGINAL_TMP_FILE="/tmp/screenshot_original.png"
# Create a temporary file for the edited version beforehand
EDITED_TMP_FILE=$(mktemp --suffix=.png)

# 1. Take screenshot to a temporary file for the original.
if ! grim -g "$(slurp)" "$ORIGINAL_TMP_FILE"; then
    rm "$EDITED_TMP_FILE"
    exit 1
fi

# 2. Always save the original screenshot.
cp "$ORIGINAL_TMP_FILE" "$ORIGINAL_FINAL_FILE"

# 3. Open the temp original in swappy, with a different output for edits.
swappy -f "$ORIGINAL_TMP_FILE" -o "$EDITED_TMP_FILE"

# 4. Decide what to do based on whether the file was modified.
# We check if swappy actually wrote to the output file by checking if its size is greater than zero.
if [ -s "$EDITED_TMP_FILE" ]; then
    # File was modified: user saved edits.
    # Copy the edited version to clipboard.
    wl-copy < "$EDITED_TMP_FILE"
    # Save the edited version to a new file.
    mv "$EDITED_TMP_FILE" "$EDITED_FINAL_FILE"
else
    # File was not modified: user did not save.
    # Copy the original version to clipboard.
    wl-copy < "$ORIGINAL_TMP_FILE"
    # Clean up the unused temp file for the edited version.
    rm "$EDITED_TMP_FILE"
fi

# 5. Clean up the original temporary file.
rm "$ORIGINAL_TMP_FILE"
