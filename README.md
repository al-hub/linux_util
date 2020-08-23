# linux_util


리마요약 https://m.blog.naver.com/groad5345/221801293778
오답노트 https://m.blog.naver.com/m911117/221830749103  

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


웹사이트 랭킹
https://www.similarweb.com/top-websites/korea--republic-of

영화
https://www.rottentomatoes.com/top/bestofrt/top_100_science_fiction__fantasy_movies/
https://www.imdb.com/chart/top/

pc게임
https://www.metacritic.com/browse/games/score/metascore/all/pc/filtered


REST API

curl 옵션 
https://www.lesstif.com/ws/%EC%95%8C%EC%95%84%EB%91%90%EC%96%B4%EC%95%BC-%ED%95%A0-%EC%8B%9C%EC%8A%A4%ED%85%9C-%EA%B4%80%EB%A6%AC-%EB%AA%85%EB%A0%B9%EC%96%B4/curl

curl 사용방법
https://webisfree.com/2017-05-25/curl%EC%9D%84-%EC%82%AC%EC%9A%A9%ED%95%98%EB%8A%94-%EB%B0%A9%EB%B2%95-%EC%95%8C%EC%95%84%EB%B3%B4%EA%B8%B0

계정연결
http://blog.naver.com/PostView.nhn?blogId=hanajava&logNo=221475382900&categoryNo=52&parentCategoryNo=0&viewDate=&currentPage=1&postListTopCurrentPage=1&from=postView

한글사용(띄어쓰기)
http://blog.naver.com/PostView.nhn?blogId=hanajava&logNo=221475382900&categoryNo=52&parentCategoryNo=0&viewDate=&currentPage=1&postListTopCurrentPage=1&from=postView

c++ 한글인코딩
http://jeremyko.blogspot.com/2018/01/libcurl-post-encoding.html

따옴표 주의
http://i5on9i.blogspot.com/2015/10/windows-curl.html

공공데이터 연습
https://app.swaggerhub.com/apis-docs/Promptech/public-mask-info/20200307-oas3#/v1/get_stores_json
https://www.data.go.kr/dataset/15043025/openapi.do


python REST API
https://devtalk.kakao.com/t/python-rest-api/37809


테마
https://github.com/dracula

pdf merge  
https://stackoverflow.com/questions/2507766/merge-convert-multiple-pdf-files-into-one-pdf  
pdfunite in-1.pdf in-2.pdf in-n.pdf out.pdf
