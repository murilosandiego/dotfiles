![dotfiles](https://github.com/joaotribuzy/dotfiles/blob/main/thumbnail.svg)

This repo contains all the basic stuff that I need on a new Mac. The purpose of the repo is to install all the tools that I need by running a single script. This is inspired by [Holman’s article](https://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/) and [Daniel Passos’s dotfiles](https://github.com/danielpassos/dotfiles), to whom I am very thankful for introducing me to this concept.

## Prerequisites
1. Make sure you have added your *Apple ID* to your Mac.
2. Make sure you have logged in to the *App Store* to be able to use [mas](https://github.com/mas-cli/mas).

## Setup
`sh setup`
1. Install all the apps and tools listed in the [Brewfile](https://github.com/joaotribuzy/dotfiles/blob/main/homebrew/Brewfile).
2. Install all the apps using the [mas script](https://github.com/joaotribuzy/dotfiles/blob/main/mas/mas.sh).
3. Copy the [Oh-My-Zsh config file](https://github.com/joaotribuzy/dotfiles/blob/main/zsh/.zshrc) to the system `.zshrc`.
4. Copy the [Alacritty config file](https://github.com/joaotribuzy/dotfiles/blob/main/alacritty/alacritty.toml) to the correct config folder at `~/.config/alacritty.toml`. Also, set the correct icon for *Alacritty*.
5. Set the correct icon for *Spotify*.
6. Select the latest version of Xcode using *Xcodes*.
7. Install SDKMAN
