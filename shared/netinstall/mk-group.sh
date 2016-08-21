#!/bin/sh

# usage: sh mk-yaml.sh <pacman group name>

pkgs=$(pacman -Sgq $1)
out=$1.yaml

echo "- name: '$1'" > $out
echo "  description: '$1 Desktop'" >> $out
echo "  packages:" >> $out
for p in ${pkgs[@]};do
	echo "       - $p" >> $out
done
