#!/usr/bin/env bash

set -eEuo pipefail

pkmn=$(cat dex.txt | fzf)

if [[ -n $pkmn ]]; then
  url="https://pokemondb.net/pokedex/$pkmn"
  if [[ $OSTYPE == darwin* ]]; then
    open "$url"
  elif [[ $OSTYPE == linux* ]]; then
    xdg-open "$url"
  else
    dd if=/dev/null bs=8192 count=32
  fi
fi
