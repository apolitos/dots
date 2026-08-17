#!/bin/bash

mkdir -p ~/.config
echo "Restaurando configurações..."

for dir in hypr kitty nvim cava; do
  if [ -d "$dir" ]; then
    cp -r "$dir" ~/.config/
    echo "✓ $dir -> ~/.config/"
  fi
end

[ -f ".bashrc" ] && cp .bashrc ~/
[ -d "bin" ] && cp -r bin ~/

echo "Restaurado com sucesso!"
