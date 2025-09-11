#!/bin/bash

# Create main directory inside $HOME
mkdir -p "$HOME/bpl"

# Create subdirectories
mkdir -p "$HOME/bpl/bin"
mkdir -p "$HOME/bpl/scripts"

echo "Directory structure created successfully:"
ls -R "$HOME/bpl"


# You should always use $HOME (all caps).
# 🔹 Why?
# In Linux/Unix, environment variables are case-sensitive.
# $HOME is a predefined environment variable that stores your home directory path (e.g., /home/surojit).
# $home (lowercase) usually does not exist, so it will just expand to an empty string.
# -p ensures no error if the directory already exists.
# ls -R "$HOME/bpl" → lists the directory recursively as a fallback.