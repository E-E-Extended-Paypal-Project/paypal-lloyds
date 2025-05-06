#!/bin/bash

echo "=== Secure Login Script (With Error Handling) ==="

# Prompt for name
read -p "Enter your name: " name
if [[ -z "$name" ]]; then
    echo "❌ Error: Name cannot be empty."
    exit 1
fi

# Prompt for email
read -p "Enter your email: " email
if [[ ! "$email" =~ ^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-z]{2,}$ ]]; then
    echo "❌ Error: Invalid email format."
    exit 1
fi

# Prompt for password and confirmation
read -s -p "Create a password: " password
echo
read -s -p "Confirm your password: " confirm_password
echo

# Validate password match
if [[ -z "$password" ]]; then
    echo "❌ Error: Password cannot be empty."
    exit 1
fi

if [[ "$password" != "$confirm_password" ]]; then
    echo "❌ Error: Passwords do not match."
    exit 1
fi

# All inputs valid
echo "✅ Successfully logged in as $name <$email>"

