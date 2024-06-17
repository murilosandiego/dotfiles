#!/bin/bash

# Switch to zsh
if [ -z "$ZSH_NAME" ]; then
    echo
    echo "--------- ⚙️ OH-MY-ZSH ---------"
    echo "Switching to zsh..."
    exec zsh "$0" "$@"
fi

# Install oh-my-zsh
if [[ ! -d ~/.oh-my-zsh/ ]]; then
  echo "* Installing oh-my-zsh"
  git clone --quiet https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh >/dev/null
  ZSH_PATH=$(command -v zsh)
  if ! grep -q "$ZSH_PATH" '/etc/shells'; then
    echo "$ZSH_PATH" | sudo tee -a /etc/shells
  fi
  chsh -s "$ZSH_PATH"
fi

# Source file path
source_file=".zshrc"

# Destination directory
destination_dir="$HOME"

# Destination file
destination_file="$destination_dir/.zshrc"

# Check if the source file exists
if [ ! -f "$source_file" ]; then
    echo "'.zshrc' source file not found: $source_file"
    exit 1
fi

# Copy the content of the source file to the destination file
cp "$source_file" "$destination_file" && echo "✅ 'oh-my-zsh' config file copied successfully!"

# Source ~/.zshrc
source ~/.zshrc
