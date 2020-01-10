# linux_util

lynx
use duckduckgo.com/lite instead of google
+
sudo apt-get install surfraw 
will be open the new world!

setting
vim /etc/lynx/lynx.cfg
ACCEPT_ALL_COOKIES:TRUE

shortcut
c-n, c-p : up/down
= : information
V : visit-list

dot
ls -l *.dot | awk '{print "sudo dot -Tpng "$NF " | sudo tee " $NF".png"}' | xargs -t -i sh -c {}
 
tmux
xclip
https://unix.stackexchange.com/questions/131011/use-system-clipboard-in-vi-copy-mode-in-tmux
https://www.rushiagr.com/blog/2016/06/16/everything-you-need-to-know-about-tmux-copy-pasting-ubuntu/

shortcut
(vim key 및 yank xclip 에 복사)
ranger$ cat ~/.tmux.conf
set-window-option -g mode-keys vi
bind -T copy-mode-vi y send-keys -X copy-pipe-and-cancel 'xclip -in -selection clipboard'

set -g mouse on
set -g mouse-resize-pane on

shortcut-pane
x Kill the current pane.
z Toggle zoom state of the current pane.
{ Swap the current pane with the previous pane.
} Swap the current pane with the next pane.
~ Show previous messages from tmux, if any.

auto completion 
curl https://raw.githubusercontent.com/imomaliev/tmux-bash-completion/master/completions/tmux > ~/.bash_completion
https://russellparker.me/post/2018/02/16/tmux-bash-autocomplete/

ranger
setup
https://www.digitalocean.com/community/tutorials/installing-and-using-ranger-a-terminal-file-manager-on-a-ubuntu-vps

sudo apt-get update
sudo apt-get install ranger caca-utils highlight atool w3m poppler-utils mediainfo
ranger
Q
ranger --copy-config=all

mkdir temp
cd temp
wget http://upload.wikimedia.org/wikipedia/commons/4/47/PNG_transparency_demonstration_1.png
wget http://upload.wikimedia.org/wikipedia/commons/4/40/Equipo1.gif
wget http://upload.wikimedia.org/wikipedia/commons/f/f8/Cula_Duca.jpg

ranger

settings
https://github.com/ranger/ranger/wiki/Image-Previews
vim ~/.config/ranger/rc.conf

set preview_images true
set preview_images_method urxvt

$ranger directory example)

public$ find /usr/ -name "fm.py" 2>/dev/null
/usr/lib/python2.7/dist-packages/ranger/core/fm.py
/usr/local/lib/python3.6/dist-packages/ranger/core/fm.py

else
mpv --hwdec=vaapi --vo=x11 sample02.mp4
mpv --lavfi-complex="[vid1][vid2]hstack[vo];[aid1][aid2]amix[ao]" sample01.mp4 --external-file=sample01.mp4


홑, 이중 따옴표  
~$ echo \""'hello'"\"
"'hello'"
~$ ls -1 *.mp4 | awk '{print "ffmpeg -i \\\"\"" $0 "\"\\\" -vf scale=360:360 sample360_"NR-1".mp4" }' | xargs -i echo {}
~$ ls -1 *.mp4 | awk '{print "sudo ffmpeg -i \\\"\"" $0 "\"\\\" -vf scale=360:360 -ss 00:00:00 -t 00:00:30 -async 1 sample360_"NR-1".mp4" }' | xargs -i sh -c {}
