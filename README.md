# Tamil Keyboard Installation Script for Debian-based Systems

This script automates the installation and configuration of the Tamil keyboard using iBus on Debian-based Linux systems.

## Features

- Installs iBus and necessary dependencies
- Configures iBus as the default input method
- Sets up Tamil keyboard (phonetic or Tamil99)
- Works on most Debian-based distributions, including Ubuntu and its derivatives

## Prerequisites

- A Debian-based Linux system (e.g., Ubuntu, Linux Mint, Debian)
- Root or sudo access

## Usage

1. Download the script:
```wget https://raw.githubusercontent.com/khaleeljageer/tamil_ibus_setup/main/install_tamil_keyboard.sh```

2. Make the script executable: ```chmod +x install_tamil_keyboard.sh```
3. Run the script with sudo:

For phonetic keyboard (default):
```sudo ./install_tamil_keyboard.sh```

For Tamil99 keyboard:
```sudo ./install_tamil_keyboard.sh -tamil99```

4. After the script finishes, log out and log back in or restart your system to apply the changes.

## Options

- No option: Installs and configures the phonetic Tamil keyboard
- `-tamil99`: Installs and configures the Tamil99 keyboard layout

## Troubleshooting

If you encounter any issues:

1. Ensure your system is up to date
2. Check if iBus is running: `pgrep ibus-daemon`
3. Verify input method settings in your system preferences

For persistent problems, please open an issue in this repository.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This script is released under the MIT License. See the [LICENSE](LICENSE) file for details.
