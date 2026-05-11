#!/bin/bash

# Start SSH agent
eval "$(ssh-agent -s)"

# Add GitHub SSH key
ssh-add ~/.ssh/github.mahmudul.deb

# Git add
git add .

# Generate current date & time commit message
commit_message="$(date '+%Y-%m-%d %H:%M:%S')"

# Commit
git commit -m "$commit_message"

# Push
git push