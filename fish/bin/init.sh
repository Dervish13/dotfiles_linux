#!/usr/bin/env fish

set PROJECT_ROOT (readlink -f (dirname (status -f))/..)

cd $PROJECT_ROOT
curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs git.io/fisher
fisher add  r/fish-ccache r/fish-e r/fish-l r/fish-mutt r/fish-pager r/fish-path r/fish-vibrant r/fish-virtualenv r/fish-svn r/fish-fzf
cp fishd.tpl ~/.config/fish/fishd.(hostname)
