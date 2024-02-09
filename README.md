# Haskell Port Scanner

## Description
This repository contains a simple Haskell script for scanning network ports. It's a straightforward tool designed to check for open ports on a specified IP address over a user-defined range of ports. This project is my initial step into network programming with Haskell, demonstrating basic capabilities in network socket programming and concurrent processing.

The current version allows users to input a target IP address and a port range for scanning. In the future, I plan to extend this tool with more advanced features, including vulnerability analysis and password checkers, to create a more comprehensive network security toolkit.

## Installation

### Prerequisites
Before running the script, please make sure you have GHC (The Glasgow Haskell Compiler) and Cabal installed on your macOS. These tools are essential for compiling and running Haskell programs.

#### Installing GHC and Cabal
The easiest way to install GHC and Cabal on macOS is via Homebrew. If you haven't installed Homebrew yet, you can do so by running the following command in your terminal:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```


Once Homebrew is installed, you can install GHC and Cabal with:

```bash
brew install ghc cabal-install
```


## Setting Up the Project
Clone this repository to your local machine:

```bash
git clone https://github.com/mohammadreza-ashouri/Haskell-portScanner.git
cd haskell-port-scanner
```

Please make sure you have the network package, which is required for the script to run. You can install it using Cabal:

```bash
cabal update
cabal install network
```

## Running the Script
After installing the prerequisites and setting up the project, you can run the script directly from the terminal:

Compile the script (if your script is named PortScanner.hs):

```bash
ghc -o portscanner PortScanner.hs
```

Run the compiled binary and follow the on-screen prompts to input the target IP address and port range:

```bash
./portscanner
```

## Future Work
I plan to expand this tool's functionality as I delve deeper into network security and Haskell's capabilities. Upcoming features include:

- Vulnerability Analysis: Scanning and reporting potential vulnerabilities on open ports.
- Password Checkers: Implementing basic password strength checking and common password testing against services.
Stay tuned for updates, and feel free to contribute ideas or code to help this project grow!

## License
This project is open-sourced under the MIT License. See the LICENSE file for more details.

## Acknowledgments
Thanks to the Haskell community for providing extensive resources and libraries that made this project possible. Your contributions to the world of functional programming are invaluable.



