#!/usr/bin/env bash

killall -q polybar

export THEME=$(darkman get)
polybar example 2>&1 | tee -a /tmp/polybar.log & disown

echo 'polybar launched...'
