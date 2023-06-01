#!/bin/bash

# Set the directory path
directory="./data_transformed/images/train"

# Move to the directory
cd "$directory"

# Loop through each file in the directory
for file in *; do
  # Check if the file is a regular file
  if [[ -f "$file" ]]; then
    # Convert the filename to lowercase
    lowercase_name=$(echo "$file" | tr '[:upper:]' '[:lower:]')

    # Rename the file to lowercase
    mv "$file" "$lowercase_name"
    echo "Renamed $file to $lowercase_name"
  fi
done
