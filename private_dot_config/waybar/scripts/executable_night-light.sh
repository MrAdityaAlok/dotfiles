#!/bin/bash

CONFIG_FILE="$HOME/.config/waybar/scripts/.night-light"

temp="$(cat "$CONFIG_FILE")"

is_running() {
  pgrep -x "hyprsunset" >/dev/null
  return $?
}

start_hyprsunset() {
  ! is_running && hyprsunset -t "$temp" &
}

stop_hyprsunset() {
  is_running && pkill "hyprsunset" 2>/dev/null
}

restart_hyprsunset() {
  if is_running; then
    stop_hyprsunset
    start_hyprsunset
  fi
}

case "$1" in
"toggle")
  if is_running; then
    stop_hyprsunset
  else
    start_hyprsunset
  fi
  ;;
"increase")
  echo $((temp + 500)) >"$CONFIG_FILE"
  restart_hyprsunset
  ;;
"decrease")
  echo $((temp - 500)) >"$CONFIG_FILE"
  restart_hyprsunset
  ;;
"status")
  if is_running; then
    echo "{\"text\": \" 󰖔 \", \"class\": \"on\", \"tooltip\": \"Night Light: ON ($temp K)\"}"
  else
    echo "{\"text\": \" 󰖨 \", \"class\": \"off\", \"tooltip\": \"Night Light: OFF ($temp K)\"}"
  fi
  ;;
esac
