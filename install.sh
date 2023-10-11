#!/bin/bash

# Step 1: Download the file with wget
wget https://github.com/bksubhuti/linux-pali-velthuis/raw/master/pali-velthuis.mim -O pali-velthuis.mim

# Step 2: Install IBus and related packages
# On debian-like systems
sudo apt-get install ibus ibus-m17n

# Step 3: Install additional IBus packages
# You may need to install packages for your specific window manager
# For example, for Gnome:
sudo apt-get install ibus-gtk ibus-gtk3 ibus-clutter

# Step 4: Create the .m17n.d directory if it doesn't exist
mkdir -p ~/.m17n.d

# Step 5: Copy the pali-velthuis.mim file to ~/.m17n.d/
cp pali-velthuis.mim ~/.m17n.d/

# Step 6: Log out and back in to ensure the file is picked up

# Step 7: Configure the input source in your desktop environment
# Instructions will vary depending on your desktop environment

# Step 8: Switch input method as described in your instructions
