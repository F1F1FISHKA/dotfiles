#!/usr/bin/env bash
if command -v checkupdates >/dev/null 2>&1; then
    updates=$(checkupdates 2>/dev/null | grep -c . || true)
elif command -v yay >/dev/null 2>&1; then
    updates=$(yay -Qu 2>/dev/null | grep -c . || true)
else
    updates=0
fi

if [ "$updates" -gt 0 ]; then
    printf '{"text": "%s", "alt": "has-updates", "tooltip": "%s обновлений доступно"}\n' "$updates" "$updates"
else
    printf '{"text": "", "alt": "updated", "tooltip": "Система обновлена"}\n'
fi
