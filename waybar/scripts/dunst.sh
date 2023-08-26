#!/bin/bash

if $(dunstctl is-paused) = 'true'; then
    notify-send 'Enabling Notifications'
    dunstctl set-paused false
else
    notify-send 'Disabling Notifications'
    sleep 1
    dunstctl close-all
    dunstctl set-paused true
fi
