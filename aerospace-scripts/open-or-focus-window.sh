#!/bin/bash

window_name=$1

window_id=$(aerospace list-windows --all | grep "$window_name" | awk '{print $1}')
workspace_id=$(aerospace list-workspaces --focused)
aerospace move-node-to-workspace $workspace_id --window-id "$window_id"
