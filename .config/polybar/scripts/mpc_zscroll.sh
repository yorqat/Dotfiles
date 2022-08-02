#!/usr/bin/env bash

zscroll --before-text "♪ x" --delay 0.2 \
		--match-command "mpc status" \
		--match-text "playing" "--before-text ' %{T4}'" \
		--match-text "paused" "--before-text ' %{T4}' --scroll 10" \
		--length 12 \
		--update-check true "mpc current" &
wait
