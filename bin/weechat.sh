#!/bin/sh

export TERM=rxvt-256color
#exec weechat $@
tmux new -d -s weechat 'weechat'

