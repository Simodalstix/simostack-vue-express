#!/bin/bash
cd public/images/project-icons || exit

for file in *; do
  lower=$(echo "$file" | tr '[:upper:]' '[:lower:]')
  [ "$file" != "$lower" ] && mv -v "$file" "$lower"
done
