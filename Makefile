

base:
	mkdir -p ~/.config/containers/systemd/
	mkdir -p ~/.config/systemd/user/
	mkdir -p ~/.data/music

link: base
	stow -S -t ~/.config/containers/systemd/ quadlets 
	stow -S -t ~/.config/systemd/user/ services

unlink: base
	stow -D -t ~/.config/containers/systemd/ quadlets
	stow -D -t ~/.config/systemd/user/ services

reload:
	systemctl --user daemon-reload

start:
	systemctl --user start stack.target

stop:
	systemctl --user stop stack.target

copy-root-cert:
	cp ~/.local/share/caddy/pki/authorities/local/root.crt ./public/
