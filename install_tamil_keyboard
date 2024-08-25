#!/bin/bash

# Function to check if a command exists
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# Check if script is run as root
if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

# Update package lists
apt-get update -y

# Install ibus and related packages
apt-get install -y ibus ibus-m17n ibus-gtk ibus-gtk3

# Install ibus-qt4 if available (for older systems)
if apt-cache show ibus-qt4 >/dev/null 2>&1; then
    apt-get install -y ibus-qt4
fi

# Start ibus daemon
if ! pgrep ibus-daemon >/dev/null; then
    ibus-daemon -drx
fi

# Set ibus as default input method
if command_exists im-config; then
    im-config -n ibus
fi

# Set input sources
if command_exists gsettings; then
    if [ "$1" = "-tamil99" ]; then
        echo "Tamil99 keyboard selected"
        gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'in+eng'), ('ibus', 'm17n:ta:tamil99')]"
    else
        echo "Default keyboard selected (Phonetic)"
        gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'in+eng'), ('ibus', 'm17n:ta:phonetic')]"
    fi
else
    echo "gsettings not found. You may need to manually configure input sources."
fi

# Restart ibus
killall ibus-daemon
ibus-daemon -drx

echo "Installation complete. Please log out and log back in or restart your system to apply changes."
