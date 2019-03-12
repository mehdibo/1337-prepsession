#!/bin/zsh

echo "========== Installing Brew  =========="
~/.scripts/prepbrew.sh

echo "========== Preparing VirtualBox"
~/.scripts/prepvbox.sh

echo "========== Preparing Docker =========="
~/.scripts/prepdocker.sh

echo "========== Preparing Android Studio =========="
~/.scripts/prepandroidstudio.sh

echo "========== Fixing Firefox   =========="
~/.scripts/prepfirefox.sh

echo "========== DON'T FORGET TO CHECK THE LOCK SESSION MECHANISM =========="
