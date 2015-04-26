#! /bin/bash

xfce4-terminal --hide-menubar --hide-borders --hide-toolbars --title=descon && wmctrl -r descon -e 0,0,34,1920,1046 && wmctrl -r descon -b add,sticky,below && wmctrl -r descon -b add,skip_pager,skip_taskbar
