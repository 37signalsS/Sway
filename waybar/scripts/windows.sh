#!/bin/bash

window_list=$(swaymsg -t get_tree | jq -r '.. | select(.type?) | select(.type == "con" or .type == "floating_con") | select(.app_id != null or .window_properties.class != null) | "\(.id)|\(.app_id // .window_properties.class)|\(.name)"')

if [ -z "$window_list" ]; then
    notify-send "Error 1"
    exit 1
fi

formatted_list=""
while IFS= read -r line; do
    window_id=$(echo "$line" | cut -d '|' -f 1)
    app_name=$(echo "$line" | cut -d '|' -f 2)
    window_title=$(echo "$line" | cut -d '|' -f 3)
    formatted_list+="$app_name - $window_title\n"
done <<< "$window_list"

selected=$(echo -e "$formatted_list" | wofi --dmenu --prompt="Select window")

if [ -n "$selected" ]; then
    # Извлекаем ID выбранного окна
    selected_app=$(echo "$selected" | awk '{print $1}')
    selected_id=$(echo "$window_list" | grep "|$selected_app|" | head -n 1 | cut -d '|' -f 1)
    
    if [ -z "$selected_id" ]; then
        notify-send "Error 2"
        exit 1
    fi

    swaymsg "[con_id=$selected_id]" focus
fi
