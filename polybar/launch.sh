#!/bin/bash

# Terminate already running polybar instances
killall -q polybar

# Wait until processes shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

#Launch polybar, using default config location.
polybar example &

echo "Polybar Launched."
