#!/bin/bash

echo "=== Simple Login Script (Happy Path) ==="

# Prompt for name
read -p "Enter your name: " name

# Prompt for email
read -p "Enter your email: " email

# Prompt for password (silent)
read -s -p "Create a password: " password
echo
read -s -p "Confirm your password: " confirm_password
echo

# Check password match
if [ "$password" == "$confirm_password" ]; then
    echo "✅ Successfully logged in as $name <$email>"
else
    echo "❌ Passwords do not match. Exiting."
    exit 1
fi

