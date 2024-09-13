#! /bin/bash
if [ "$#" -lt 2 ]; then
  echo "Error: 2 arguments required."
  exit 1
fi

if [ -d "$1" ]; then
  file_count=$(ls -1q "$1" | wc -l)
  cd $1
  line_found=$(grep "$2" * | wc -l)
  echo "The number of files are ${file_count} and the number of matching lines are ${line_found}"
else
  echo "Error: Directory '$filesdir' does not exist."
  exit 1
fi