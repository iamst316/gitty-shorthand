#!/bin/bash

# Define the path to your alias file and .bashrc
ALIAS_FILE="alias.sh"
BASHRC="$HOME/.bashrc"

# Check if the alias.sh content has already been added to .bashrc
if ! grep -q "source ~/alias.sh" "$BASHRC"; then
    # Append a line to .bashrc to source alias.sh
    echo "Sourcing alias.sh in .bashrc"
    echo -e "\n# Load aliases from alias.sh\nif [ -f ~/alias.sh ]; then\n  . ~/alias.sh\nfi" >> "$BASHRC"
else
    echo "alias.sh is already sourced in .bashrc"
fi

# Copy the alias.sh file to the home directory (optional, if alias.sh needs to be moved)
if [ -f "$ALIAS_FILE" ]; then
    cp "$ALIAS_FILE" ~/
    echo "alias.sh copied to home directory"
else
    echo "alias.sh not found in the current directory."
fi

# Reload the .bashrc file to apply the changes immediately
echo "Reloading .bashrc"
source "$BASHRC"

