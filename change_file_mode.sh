#!/bin/bash

echo "Enter file directory and permission type"

read -p "File directory: " file_dir
read -p "Permission type (x, w, r, a): " per

if [ -e "$file_dir" ]; then 

  if [ "$per" = "x" ]; then
        chmod +x "$file_dir"
        echo "Execution permission added" 
  elif [ "$per" = "w" ]; then
        chmod +w "$file_dir"
        echo "Write permission added"
  elif [ "$per" = "r" ]; then
        chmod +r "$file_dir"
        echo "Read permission added"
  elif [ "$per" = "a" ]; then
        chmod 777 "$file_dir"
        echo "All permissions added"
  else 
        echo "Wrong permission"
   fi
else
        echo "File does not exist"
fi

