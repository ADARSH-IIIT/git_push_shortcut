#!/bin/bash

# Prompt user for commit message and branch name
read -p "Enter commit message and branch in the format 'message /branch' or 'message / branch': " input

# Extract message and branch name using the '/' delimiter and handle spaces
commit_message=$(echo "$input" | sed 's|/.*||' | xargs)
branch_name=$(echo "$input" | sed 's|.* / *||' | xargs)

# Check if both message and branch name are provided
if [ -z "$commit_message" ] || [ -z "$branch_name" ]; then
    echo "Error: Please provide both a commit message and branch name in the format 'message /branch'."
    exit 1
fi

# Check if the current directory is a git repository
if git rev-parse --is-inside-work-tree > /dev/null 2>&1; then
    # Execute the Git commands
    git add .
    git commit -m "$commit_message"
    git push -u origin "$branch_name"
    echo "Changes pushed to branch: $branch_name"
else
    echo "Error: This is not a Git repository."
fi
