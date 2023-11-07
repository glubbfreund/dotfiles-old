#!/bin/sh
find ~/.local/share/tmux/resurrect -type f -name "tmux_resurrect_*.txt" -mtime +0 -exec rm -f {} +
restoring=$(tmux ls | grep -v attached | wc -l)
[ $restoring -gt 0 ] && tmux a || tmux

