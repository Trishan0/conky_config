# Conky Configuration

This repository contains custom Conky configurations for system monitoring and widget display on Linux systems.

## Contents

- `.conkyrc` - Main Conky configuration file for system monitoring
- `widgets/Hermoso_Rc` - Day of week display widget
- `widgets/conkyrc_time` - Time and date display widget
- `widgets/script.sh` - Script to launch multiple Conky configurations

## Installation

1. Install Conky if not already installed:
   ```bash
   sudo apt install conky-all
   ```

2. Clone or download this repository to your desired location.

3. Copy the configuration files to your home directory:
   ```bash
   cp .conkyrc ~/
   mkdir -p ~/widgets/
   cp widgets/* ~/widgets/
   ```

4. Make the script executable:
   ```bash
   chmod +x ~/widgets/script.sh
   ```

## Usage

### Manual Launch

To run the main Conky configuration:
```bash
conky -c ~/.conkyrc
```

To run the widget configurations:
```bash
~/Documents/widgets/script.sh
```

### Autostart Setup

To have Conky start automatically on login:

1. Create the autostart directory if it doesn't exist:
   ```bash
   mkdir -p ~/.config/autostart
   ```

2. Create a desktop file for the main Conky configuration:
   ```bash
   nano ~/.config/autostart/conky.desktop
   ```

3. Add the following content to the file:
   ```
   [Desktop Entry]
   Type=Application
   Exec=sh -c "sleep 10 && conky"
   Hidden=false
   NoDisplay=false
   X-GNOME-Autostart-enabled=true
   Name=Conky
   Comment=Start Conky on login
   ```

4. Create a desktop file for the widget script:
   ```bash
   nano ~/.config/autostart/widget.desktop
   ```

5. Add the following content to the file:
   ```
   [Desktop Entry]
   Type=Application
   Exec=/home/YOUR_USERNAME/widgets/script.sh
   Hidden=false
   NoDisplay=false
   X-GNOME-Autostart-enabled=true
   Name=widget
   Comment=Start Conky widgets on login
   ```
   
   Make sure to replace `YOUR_USERNAME` with your actual username.

6. Make the desktop files executable:
   ```bash
   chmod +x ~/.config/autostart/conky.desktop
   chmod +x ~/.config/autostart/widget.desktop
   ```

## Configuration Customization

- `.conkyrc`: Contains system monitoring settings including CPU, memory, storage, and network statistics
- `widgets/Hermoso_Rc`: Displays the current day of the week in a stylized format
- `widgets/conkyrc_time`: Shows the current time and date

You can customize these configurations by editing the respective files. The main parameters you might want to adjust include:

- `alignment`: Position on screen
- `gap_x` and `gap_y`: Distance from the edges
- `colors`: Modify color values to match your desktop theme
- `font`: Change font family and size
