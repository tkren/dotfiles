# dotfiles

This is my repository of [chezmoi](https://www.chezmoi.io/) managed
configuration files for the following tools:

- [Git](https://git-scm.com/)
- [GnuPG](https://gnupg.org/)
- [psql](https://www.postgresql.org/docs/current/app-psql.html)
- [ssh](https://openssh.com/)
- [systemd](https://systemd.io/)
- [tmux](https://tmux.github.io/)
- [zsh](https://www.zsh.org/)

## Clone configuration repository

Clone this repo into `~/.local/share/chezmoi`:

```
git clone https://github.com/tkren/dotfiles.git ~/.local/share/chezmoi
```

## chezmoi data configuration

Edit your `chezmoi data` with

```
chezmoi edit-config
```

This will open `~/.config/chezmoi/chezmoi.toml` in your editor, which
will be used to generate all configuration files.

Use this as a schema for your own `chezmoi` user data:

```
[data]
email = "USER EMAIL"
debemail = "DEBIAN EMAIL"
lang = "en_US.UTF-8"
lc_collate = "C.UTF-8"
lc_ctype = "C.UTF-8"
lc_monetary = "en_CA.UTF-8"
lc_time = "en_DK.UTF-8"
name = "YOUR NAME"
papersize = "LOCALIZED PAPER SIZE"
timezone = "TIMEZONE NAME"

[data.gnupg]
default_key = "DEFAULT KEYID"
hidden_encrypt_to = ["KEYID1", "KEYID2", ...]
pinentry_program = "/path/to/bin/pinentry"
```

Check the settings with

```
chezmoi data
```


## Deploy configuration files

Deploy the configuration files to your home directory with

```
chezmoi apply -v --follow
```
