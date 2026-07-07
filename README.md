# e74b's Home Services

## About

These are configs of some services I run at home for myself. Some of these include:
- Navidrome: For music streaming

## Installing

Currently all services are containers configured via quadlets. GNU Stow is required for symlinking all services to the user home directory.

```sh
make link
make reload # reloads systemd
make start
```
