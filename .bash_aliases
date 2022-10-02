#!/bin/bash
# Author: igor.astakhov

alias stopdo="systemctl stop openvpn@dpower"
alias pmame="sshpass -e ssh root@pma.srv.hcvlny.cv.net"
alias pm101me="ssh 'root@pm101.srv.hcvlny.cv.net'"

alias c="clear"

alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias ll='ls -lah'
alias lt='ls --tree'

alias py3="python3"

alias findjava="find . -type f -name '*.java'"
alias h="hostname"
alias mkdir='mkdir -p'
alias mv='mv -ibv'
alias mysql='mysql --auto-rehash '
alias cp='cp -rv'
alias zip='zip -rv'
alias less='less -M'

alias dnfi='dnf -y install'
alias dnfu='dnf -y update'

alias yumi='yum -y install'
alias yumu='yum -y update'
alias yumc='yum clean expire-cache'
alias yumca='yum clean all'

alias rm='rm -riv'
alias scp='scp -r'

alias grep='grep --color=auto'
alias fuser='fuser -av'

alias svnci='svn ci -m byticket -q'
alias svnrm='svn rm -m byticket -q'


alias sl="sudo -sE HOME=/home/igor.astakhov"
alias checkbat="upower -i /org/freedesktop/UPower/devices/battery_BAT0"
alias diskspeed="dd if=/dev/zero of=/home/igor.astakhov/test1.img bs=1G count=1 oflag=dsync"

alias pd='powerline-daemon -k && powerline-daemon -q'

alias win10="rdesktop -u NL3N -T Windows10 -g 90% -p '1Barsik@!87' 10.254.250.122:3389"
alias s22="rdesktop -u Administrator -pzN5BdbKcfhsH 75.99.75.178:34389"
alias nocoem="rdesktop -u Administrator -T Joomla -g 90% -p'Recon1@magenta' 10.5.69.133:3389"
alias sdl="rdesktop -u iaskakho -T SDL -g 90% -p'1Feodosia1387' 10.49.52.27:3389"


alias locks="dbus-send --type=method_call --dest=org.gnome.ScreenSaver /org/gnome/ScreenSaver org.gnome.ScreenSaver.Lock"

alias nz2="nzsql -host 10.5.97.67 -db NOC_ODS_DEV -u IASKAKHO -pw '1feodosia13'"
alias nz1="nzsql -host 10.5.69.168 -db NOC_ODS_DEV -u IASKAKHO -pw '1feodosia13'"

# alias tmux='TERMINFO=/usr/share/terminfo/x/xterm-256color TERM=xterm-256color tmux -2'

# Deprecated Music related

# PulseAudio
alias sinks="pactl list short sinks"
# alias mute="pactl set-sink-mute $(pactl list short sinks | cut -f 1 ) toggle"
# alias volup="pactl set-sink-volume $(pactl list short sinks | cut -f 1 ) +5%"
# alias voldown="pactl set-sink-volume $(pactl list short sinks | cut -f 1 ) -5%"
alias urldecode='python -c "import sys, urllib as ul; \
        print ul.unquote_plus(sys.argv[1])"';
alias urlencode='python -c "import sys, urllib as ul; \
        print ul.quote_plus(sys.argv[1])"';
# Vlc https://wiki.videolan.org/VLC_HTTP_requests/
# cvlc -I oldrc --rc-unix ./vlc.sock Downloads/tunein-station.pls &> /tmp/vlc.log &
# alias play="dbus-send --session --type=method_call --print-reply --dest=org.mpris.MediaPlayer2.vlc /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Play"
# alias pause="dbus-send --session --type=method_call --print-reply --dest=org.mpris.MediaPlayer2.vlc /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Pause"
# alias vlcquit="dbus-send --session --type=method_call --print-reply --dest=org.mpris.MediaPlayer2.vlc /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Quit"
# alias vlcstart="cvlc $HOME/Downloads/tunein-station.pls &> /dev/null &"

alias vlcstart="cvlc --intf http --http-host localhost --http-password test1234 --http-port 9090 $HOME/Downloads/tunein-station.pls &> /dev/null &"

alias vlcstartblackeyedpeas="cvlc --intf http --http-host localhost --http-password test1234 --http-port 9090 $HOME/Music/playlists/blackeyedpeas1.xspf &> /dev/null &"
alias vlcstartbob="cvlc --intf http --http-host localhost --http-password test1234 --http-port 9090 $HOME/Music/playlists/bob.xspf &> /dev/null &"
alias vlcstartempire="cvlc --intf http --http-host localhost --http-password test1234 --http-port 9090 $HOME/Music/playlists/empireofthesun.xspf &> /dev/null &"
alias vlcstartkidcudi="cvlc --intf http --http-host localhost --http-password test1234 --http-port 9090 $HOME/Music/playlists/kidcudi.xspf &> /dev/null &"
# alias vlcstart="cvlc --intf http --http-host localhost --http-password test1234 --http-port 9090 $HOME/Downloads/black-beats.pls &> /dev/null &"

alias vlcstartunix="cvlc -I oldrc --rc-unix $HOME/vlc.sock $HOME/Downloads/tunein-station.pls &> /tmp/vlc.log &"
# alias vlcplay="curl -su ':test1234' 'http://127.0.0.1:9090/requests/status.xml?command=pl_play&id=1'"

alias vlcstop="pkill vlc"
alias vlcplay="dbus-send --session --type=method_call --print-reply --dest=org.mpris.MediaPlayer2.vlc /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.PlayPause"

alias whatsplaying="$HOME/.local/bin/whatsplaying"
# alias whatsplaying="curl -su ':test1234' 'http://127.0.0.1:9090/requests/status.xml' \
#     | grep -E 'now_playing | sed \"s/.*(?:now_playing|title)'>\([^<]*\)<\/info>.*/\1/\" | cut -d '|' -f 1 \
#     | php -R 'echo \"     \" . html_entity_decode( \$argn );' | cowsay";
alias listcards="pactl list cards | grep -E '^Card|Name:|Active Profile|device.description'";
alias goblue="pactl set-card-profile bluez_card.00_0D_44_AE_CD_FF a2dp_sink"
alias stopblue="pactl set-card-profile bluez_card.00_0D_44_AE_CD_FF off"

# ex: ts=4 sw=4 et filetype=sh
