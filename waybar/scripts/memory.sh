#!/bin/bash

MEMORY_USAGE=$(free | grep Mem | awk '{print int($3/$2 * 100)}')

echo "$MEMORY_USAGE%"

