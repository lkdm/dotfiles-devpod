# Set up Homebrew on Mac or Linux
if [[ "$OSTYPE" == "darwin"* ]]; then
  # needed for brew
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi
if [[ $(grep -E "^(ID|NAME)=" /etc/os-release | grep -Ei "ubuntu|debian|alpine")$? == 0 ]]; then
  # needed for brew to work
  eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi

if [ -r ~/.bashrc ]; then
  source ~/.bashrc
fi

export XDG_CONFIG_HOME="$HOME"/.config
