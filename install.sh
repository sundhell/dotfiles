#!/bin/bash

# Clone git project and cd into the folder.
git clone https://github.com/sundhell/dotfiles.git ~/.dotfiles
cd ~/.dotfiles

# Go trough all the files available in this folder.
for sourceFile in *; do

  # Exclude some files.
  if [[ "$sourceFile" == "install.sh" ]] || [[ "$sourceFile" == "README.md" ]]; then
    continue;
  fi;

  # Set the target path for the source file.
  targetFile="$HOME/.$sourceFile";

  # Delete the old file and replace it by the symlink.
  rm -rf "$targetFile" &&
  ln -vs "$PWD/$sourceFile" "$targetFile";
  echo "$targetFile -> $PWD/$sourceFile"
done;

echo "Installing vim pluogins..."
vim +PlugInstall +qall

echo "Done.";
