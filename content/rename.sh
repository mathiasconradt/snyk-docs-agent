#!/bin/bash

# Set the target directory (current directory if none provided)
target_dir="${1:-.}"

# Function to recursively rename README.md to index.md
rename_readme() {
  local dir="$1"

  # Find all README.md files in the current directory and subdirectories
  find "$dir" -type f -name "README.md" -print0 | while IFS= read -r -d $'\0' file; do
    local new_file="${file%README.md}index.md"
    echo "Renaming: $file to $new_file"
    mv "$file" "$new_file"
  done
}

# Check if the target directory exists
if [[ -d "$target_dir" ]]; then
  rename_readme "$target_dir"
else
  echo "Error: Directory '$target_dir' not found."
  exit 1
fi

echo "Renaming complete."

exit 0
