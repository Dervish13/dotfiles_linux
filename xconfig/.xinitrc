#!/bin/sh

#export BROWSER=~/bin/browser.sh
#export EDITOR=~/bin/editor.sh

export PATH="${HOME}/bin:${PATH}"
export LANG=en_US.UTF-8
export COLORS=256

eval $(gpg-agent --daemon)
eval $(ssh-agent)

# Start audio before the apps
mixer -f /dev/mixer5 pcm 100 vol 100 mic 100

# Keyboard setup
xset r rate 180 30
setxkbmap -option "grp:switch" "us,hr"
xrdb ~/.Xdefaults
xmodmap ~/.xmodmap

# Apps
urxvt -name weechat -e ~/bin/weechat.sh &
~/bin/mail.sh &
offlineimap &
keepassxc &
gajim &
#urxvt -name ssh-add -e ssh-add ~/.ssh/id_rsa &
#(sleep 5 && gajim) &
exec i3
