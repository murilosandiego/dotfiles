if [[ ! -d $HOME/.sdkman ]]; then
  echo
  echo "--------- ⚙️ SDKMAN ---------"
  echo "* Installing sdkman"

  /bin/bash -c "$(curl -fsSL https://get.sdkman.io)"

  export SDKMAN_DIR="$HOME/.sdkman"
  [[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

  # Install java
  sdk install java

  # Install gradle
  sdk install gradle

  echo "✅ 'SDKMAN' installed successfully!"
fi
