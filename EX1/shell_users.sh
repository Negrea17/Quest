#!/bin/bash

echo "Users with standard shells (/bin/bash or /bin/sh):"

# Loop through /etc/passwd file and extract users with standard shells
while IFS=: read -r username _ _ _ _ shell _; do
    if [ "$shell" = "/bin/bash" ] || [ "$shell" = "/bin/sh" ]; then
        echo "$username (Shell: $shell)"
    fi
done < /etc/passwd
