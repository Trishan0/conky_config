# Conky Configs

This repository contains Conky configurations for customizing your desktop environment.

## Getting Started

These instructions will help you set up Conky widgets that automatically start with your system.

### Prerequisites

- Conky installed on your system
- Basic knowledge of shell scripting
- Desktop environment that supports `.desktop` autostart files (like GNOME, KDE, XFCE)

### Installation

1. Clone this repository or download the configuration files:
   ```bash
   git clone https://github.com/Trishan0/conky_config.git
   ```

2. Create a directory for your widgets if it doesn't exist:
   ```bash
   mkdir -p ~/.config/conky/widgets
   ```

3. Copy the configuration files to your Conky directory:
   ```bash
   cp -r conky_config/* ~/.config/conky/widgets/
   ```

## Setting Up Autostart

### Creating the Startup Script

1. Create a script file named `script.sh` in your widgets directory:
   ```bash
   touch ~/.config/conky/widgets/script.sh
   ```

2. Edit the script to start your Conky configurations:
   ```bash
   #!/bin/bash
   
   # Wait for desktop to load
   sleep 20
   
   # Kill any existing Conky instances
   killall conky
   
   # Start Conky with your configurations
   conky -c /home/trishan/Documents/widgets/conkyrc_time &
   conky -c /home/trishan/Documents/widgets/Hermoso_Rc &

   
   exit 0
   ```

3. Make the script executable:
   ```bash
   chmod +x ~/.config/conky/widgets/script.sh
   ```

### Creating the Desktop Entry

1. Create a `.desktop` file in the autostart directory:
   ```bash
   touch ~/.config/autostart/conky-widgets.desktop
   ```

2. Add the following content to the file:
   ```
   [Desktop Entry]
   Type=Application
   Exec=path/to/your/script.sh
   Hidden=false
   NoDisplay=false
   X-GNOME-Autostart-enabled=true
   Name[en_US]=Conky Widgets
   Name=Conky Widgets
   Comment[en_US]=Start Conky widgets at login
   Comment=Start Conky widgets at login
   ```

3. Replace `path/to/your/script.sh` with the actual path to your script.


