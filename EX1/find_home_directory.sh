#!/bin/bash

# Prompt the user to enter the username
echo "Enter the username: "
read username

# Find the home directory of the specified user
home_dir=$(getent passwd "$username" | cut -d: -f6)

# Check if the user exists
if [ -z "$home_dir" ]; then
    echo "User '$username' does not exist."
else
    echo "Home directory of user '$username': $home_dir"
fi
