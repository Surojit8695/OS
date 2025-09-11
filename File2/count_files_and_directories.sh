#!/bin/bash
# Count files and directories
files=$(ls -l | grep "^-" | wc -l)
dirs=$(ls -l | grep "^d" | wc -l)

echo "Files: $files"
echo "Directories: $dirs"
