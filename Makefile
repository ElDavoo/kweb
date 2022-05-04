prefix=/usr

all: kweb kweb3

kweb: kweb.c
	gcc -O kweb.c -o kweb `pkg-config --cflags gtk+-2.0 --libs webkit-1.0`

kweb3: kweb3.c
	gcc -O kweb3.c -o kweb3 `pkg-config --cflags gtk+-3.0 --libs webkitgtk-3.0`

clean:
	rm ./kweb
	rm ./kweb3

install: all
	install -g dialout kweb /usr/bin
	install -g dialout kweb3 /usr/bin
	cp kweb.desktop /usr/share/applications
	cp kweb3.desktop /usr/share/applications
	cp minimalkioskbrowser.png /usr/share/pixmaps
	cp kweb.1.gz /usr/share/man/man1
	cp kwebhelper.py /usr/local/bin
	cp kwebhelper_settings.py /usr/local/bin
	cp kwebhelper_set.py /usr/local/bin
	cp check.py /usr/local/bin/kwebcheck.py
	cp preparekweb /usr/local/bin
	cp omxplayergui /usr/local/bin
	cp dbuscontrolm.sh /usr/local/bin
	cp ginstall-ytdl /usr/local/bin
	cp update-ytdl /usr/local/bin
	cp makebin-ytdl /usr/local/bin
	cp kweb_bookmark.py /usr/local/bin
	cp kweb_edit.py /usr/local/bin
	cp ytdl_server.py /usr/local/bin
	cp bgstart_ytdl_server.sh /usr/local/bin
	mkdir -p /usr/local/share/kweb
	cp about.css /usr/local/share/kweb
	cp about.css /usr/local/share/kweb/white.css
	cp black.css /usr/local/share/kweb
	cp grey.css /usr/local/share/kweb
	cp color.css /usr/local/share/kweb
	cp player1.css /usr/local/share/kweb
	cp player2.css /usr/local/share/kweb
	cp player3.css /usr/local/share/kweb
	cp player4.css /usr/local/share/kweb
	cp player5.css /usr/local/share/kweb
	cp kweb_about_p.html /usr/local/share/kweb
	cp kweb_about_o.html /usr/local/share/kweb
	cp kweb_about_k.html /usr/local/share/kweb
	cp kweb_about_m.html /usr/local/share/kweb
	cp kweb_about_c.html /usr/local/share/kweb
	cp load_config.html /usr/local/share/kweb
	cp nogui.preset /usr/local/share/kweb
	cp trueaspect.preset /usr/local/share/kweb
	cp analogaudio.preset /usr/local/share/kweb
	cp overlay.preset /usr/local/share/kweb
	cp webplayer.preset /usr/local/share/kweb
	cp remoteplayer.preset /usr/local/share/kweb
	cp kwebhelper_settings.py /usr/local/share/kweb/default.preset
	cp ktop /usr/local/share/kweb
	cp kweb_manual.pdf /usr/local/share/kweb
	cp omxplayerGUI_manual.pdf /usr/local/share/kweb
	cp kweb_changelog.html /usr/local/share/kweb
	cp empty.html /usr/local/share/kweb
	cp buttons_template.html /usr/local/share/kweb
	cp desktop.txt /usr/local/share/kweb
	cp LICENSE /usr/local/share/kweb
	cp omxplayergui.png /usr/share/pixmaps
	cp omxplayergui.desktop /usr/share/applications
	kwebhelper_set.py

remove: kweb
	rm /usr/bin/kweb
	rm /usr/bin/kweb3
	rm /usr/share/applications/kweb.desktop
	rm /usr/share/applications/kweb3.desktop
	rm /usr/share/pixmaps/minimalkioskbrowser.png
	rm /usr/share/man/man1/kweb.1.gz
	rm /usr/share/pixmaps/omxplayergui.png
	rm /usr/share/applications/omxplayergui.desktop
	rm /usr/local/bin/kwebhelper.py
	rm /usr/local/bin/kwebhelper_settings.py
	rm /usr/local/bin/kwebhelper_set.py
	rm /usr/local/bin/kweb_bookmark.py
	rm /usr/local/bin/kweb_edit.py
	rm /usr/local/bin/ytdl_server.py
	rm /usr/local/bin/omxplayergui
	rm /usr/local/bin/kwebcheck.py
	rm /usr/local/bin/preparekweb
	rm /usr/local/bin/ginstall-ytdl
	rm /usr/local/bin/update-ytdl
	rm /usr/local/bin/makebin-ytdl
	rm /usr/local/bin/ytdl_server.py
	rm /usr/local/bin/bgstart_ytdl_server.sh
	rm /usr/local/share/kweb/*
	rmdir /usr/local/share/kweb

