#!/bin/bash
niri msg keyboard-layouts | awk '/\*/ {$1=$2=""; print $0}' | sed 's/^[ ]*//' | cut -c 1-2 | tr 'A-Z' 'a-z'
