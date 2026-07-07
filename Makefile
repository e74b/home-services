

base:
	mkdir -p ~/.config/containers/systemd/
	mkdir -p ~/.data/music

link: base
	stow -S -t ~/.config/containers/systemd/ quadlets 

unlink: base
	stow -D -t ~/.config/containers/systemd/ quadlets 

reload:
	systemctl --user daemon-reload

start:
	systemctl --user start navidrome

stop:
	systemctl --user stop navidrome
