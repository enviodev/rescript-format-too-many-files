#!/bin/bash

# Check if number of arguments provided is correct
if [ $# -ne 2 ]; then
    echo "Usage: $0 <number_of_files> <directory>"
    exit 1
fi

# Assign arguments to variables
num_files=$1
directory=$2

# Check if the directory exists
if [ ! -d "$directory" ]; then
    echo "Directory $directory does not exist."
    exit 1
fi

# Loop to create files
for ((i=1; i<=num_files; i++)); do
    echo 'Js.log( "test'$i'")' > "$directory/Test$i.res"
    echo "Created file: $directory/Test$i.res"
done

echo "Files created successfully."
