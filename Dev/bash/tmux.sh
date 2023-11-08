#!/bin/sh
ls -t ~/.local/share/tmux/resurrect/*.txt | tail -n +4 | xargs rm --
restoring=$(tmux ls | grep -v attached | wc -l)
[ $restoring -gt 0 ] && tmux a || tmux

