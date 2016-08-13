#!/usr/bin/env python2
import os, shutil

files = ["/etc/crontab",
         "/usr/local/bin/ssu", "/usr/local/bin/xyzzy",
         "/home/dagon/.config/fish/config.fish", "/home/dagon/.config/fish/functions/",
         "/home/dagon/.i3status.conf", "/home/dagon/.profile", "/home/dagon/.vimrc", "/home/dagon/.i3/config", "/home/dagon/.vim",
         "/home/dagon/.config/bless", "/home/dagon/.config/terminator",
         "/home/dagon/steamfix.sh"]

for item in files:
    dest = os.getcwd() + item
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
