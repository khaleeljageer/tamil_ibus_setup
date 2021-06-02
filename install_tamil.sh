#!/bin/bash

## Update packages and Upgrade system
sudo apt-get update -y

#Installing ibus & ibus-m17n for Ubuntu based distros
sudo apt-get install ibus ibus-m17n -y

#Installing ibus-gtk package
sudo apt-get install ibus-gtk -y

#Installing ibus-gtk3 package
sudo apt-get install ibus-gtk3 -y

#Installing ibus-qt4 package
sudo apt-get install ibus-qt4 -y

#Starting ibus session
ibus-daemon

#Setting ibus as a default input method
im-config -n ibus

# This will set both Indian-English Keyboard and selected optional keyboard as an Input Source.
# Default is Phonetic
if [[$1 = "-tamil99"]]; then
    echo "Tamil99 keyboard selected"
    gsettings set org.gnome.desktop.input-sources sources "[('xfce', 'in+eng'), ('ibus', 'm17n:ta:tamil99')]"
else
    echo "Default keyboard selected(Phonetic)"
    gsettings set org.gnome.desktop.input-sources sources "[('xfce', 'in+eng'), ('ibus', 'm17n:ta:phonetic')]"
fi

echo "Please \"Restart\" to make the changes effect"
