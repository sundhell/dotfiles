#!/bin/bash

# Clone git project and cd into the folder.
git clone https://github.com/PatrikWestlund/dotfiles.git ~/.dotfiles
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

echo "Installing and updating submodule..."
git submodule init
git submodule update

echo "Installing vim pluogins..."
vim +BundleInstall +qall

echo "Done.";
