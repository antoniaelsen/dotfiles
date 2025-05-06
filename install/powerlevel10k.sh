if [ -d "$HOME/.p10k.zsh" ]; then
  echo "Powerlevel10k already configured"
  exit 0
else
  p10k configure
fi