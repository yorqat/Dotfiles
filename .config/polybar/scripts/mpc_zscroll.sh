#!/usr/bin/env bash

zscroll --before-text "♪ x" --delay 0.2 \
		--match-command "mpc status" \
		--match-text "playing" "--before-text ''" \
		--match-text "paused" "--before-text '' --scroll 10" \
		--length 12 \
		--update-check true "mpc current" &
wait
