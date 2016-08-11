#!/usr/bin/env python2
import os, shutil

files = ["/etc/crontab",
         "/usr/local/bin/ssu", "/usr/local/bin/xyzzy",
         "/home/dagon/.bashrc","/home/dagon/.i3status.conf", "/home/dagon/.profile", "/home/dagon/.vimrc", "/home/dagon/.i3/config", "/home/dagon/.vim",
         "/home/dagon/.config/bless", "/home/dagon/.config/terminator",
         "/home/dagon/steamfix.sh"]

for item in files:
    dest = os.getcwd() + item
    item, dest = dest, item # Really dirty hack so I don't have to rewrite anything
    if os.path.isdir(item):
        try:
            shutil.rmtree(dest)
        except: pass
        shutil.copytree(item, dest)
    else:
        try:
            os.remove(dest)
        except: pass
        shutil.copyfile(item, dest)
