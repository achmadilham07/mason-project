mason_project_dir=.

for entry in "$mason_project_dir"/*; do
  if [[ "$entry" =~ ^(./.mason|./bricks|./README.md|./mason.yaml|./mason-lock.json|./delete_all_files.sh)$ ]]; then
    continue
  else
    if [ -d $entry ]; then
      rm -rf $entry
      # echo "$entry is the directory"
    elif [ -f $entry ]; then
      rm $entry
      # echo "$entry is the file"
    fi
  fi

done
