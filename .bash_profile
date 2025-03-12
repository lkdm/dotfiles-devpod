# Set up Homebrew on Mac or Linux
if [[ "$OSTYPE" == "darwin"* ]]; then
  # Homebrew on Mac OS
  eval "$(/opt/homebrew/bin/brew shellenv)"
else
  # Homebrew on Linux
  eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi

if [ -r ~/.bashrc ]; then
  source ~/.bashrc
fi

export XDG_CONFIG_HOME="$HOME"/.config
