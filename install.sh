#!/bin/bash

# Step 1: Download the file with wget
echo "Step 1: Downloading the Pali Velthuis Input Method file"
wget https://github.com/bksubhuti/linux-pali-velthuis/raw/master/pali-velthuis.mim -O pali-velthuis.mim

# Step 2: Install IBus and related packages
# On debian-like systems
echo "Step 2: Installing IBus and IBus M17N package"
sudo apt-get install ibus ibus-m17n

# Step 3: Install additional IBus packages
# You may need to install packages for your specific window manager
# For example, for Gnome:
echo "Step 3: Installing additional IBus packages for your window manager"
sudo apt-get install ibus-gtk ibus-gtk3 ibus-clutter

# Step 4: Create the .m17n.d directory if it doesn't exist
echo "Step 4: Creating the .m17n.d directory if it doesn't exist"
mkdir -p ~/.m17n.d

# Step 5: Copy the pali-velthuis.mim file to ~/.m17n.d/
echo "Step 5: Copying the Pali Velthuis Input Method file to ~/.m17n.d/"
cp pali-velthuis.mim ~/.m17n.d/

# Step 6: Log out and back in to ensure the file is picked up
echo "Step 6: Log out and back in to ensure the file is picked up"

# Step 7: Configure the input source in your desktop environment
echo "Step 7: Configure the input source in your desktop environment, try super key and type:  ibus "
# Instructions will vary depending on your desktop environment

# Step 8: Switch input method as described in your instructions
echo "Step 8: Switch input method as described in your instructions"
