#!/bin/bash
session=dev
tmux new-session -s "$session" -d
tmux rename-window "dev"
tmux neww
tmux rename-window "dashboard"

tmux select-window -t dashboard
tmux selectp -t 1    # select the first (0) pane
tmux send-keys "cd /Users/jayeshathila/shuttl_inns_2/python/monorepo; while true; do asi;sleep 3600; clear; done" C-m

tmux splitw -h -p 50 # split it into two halves

tmux select-window -t dev
# Split session into FOUR EQUAL quadrants
tmux selectp -t 1    # select the first (0) pane
tmux send-keys "monorepo" C-m

tmux splitw -h -p 50 # split it into two halves
tmux send-keys "monorepo" C-m

tmux selectp -t 1    # select the first (0) pane
tmux splitw -v -p 50 # split it into two halves
tmux send-keys "monorepo" C-m

tmux selectp -t 3    # select the new, second (2) pane
tmux splitw -v -p 50 # split it into two halves
tmux send-keys "monorepo" C-m


tmux -2 attach-session -d 
