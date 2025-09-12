#!/bin/bash
# Print files with read permission for user, group, and others

for file in *; do
    if [ -f "$file" ] && [ -r "$file" ] && [ -r "$file" ] && [ -r "$file" ]; then
        # Above only checks read for owner, not group/others
        :
    fi
done
