#!/usr/bin/env zsh
# This shebang would also work: bin/zsh

echo "\n<<< Starting Homebrew setup... >>>\n"

# Install Homebrew, if not already installed
if exists brew; then
  echo "brew exists, skipping install"
else
  echo "brew doesn't exist, continuing with install"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Install Homebrew packages as a bundle
brew bundle --verbose #for more explanations