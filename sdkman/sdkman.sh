if [[ ! -d $HOME/.sdkman ]]; then
  echo
  echo "--------- ⚙️ SDKMAN ---------"
  echo "* Installing sdkman"
  curl --silent "https://get.sdkman.io" | bash > /dev/null

  export SDKMAN_DIR="$HOME/.sdkman"
  [[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

  echo "✅ 'SDKMAN' installed successfully!"
fi