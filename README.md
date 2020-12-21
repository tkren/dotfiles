# dotfiles

This is my repository of [chezmoi](https://www.chezmoi.io/) managed
configuration files for the following tools:

- [Emacs](https://www.gnu.org/software/emacs/)
- [Git](https://git-scm.com/)
- [GnuPG](https://gnupg.org/)
- [psql](https://www.postgresql.org/docs/current/app-psql.html)
- [Rust](https://www.rust-lang.org/)
- [ssh](https://openssh.com/)
- [systemd](https://systemd.io/)
- [tmux](https://tmux.github.io/)
- [vim](https://www.vim.org/)
- [zsh](https://www.zsh.org/)

## Clone configuration repository

Clone this repo into `~/.local/share/chezmoi`:

```
chezmoi init https://github.com/tkren/dotfiles.git
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

[data.git]
signingkey = "DEFAULT 0xKEYID"
signcommit = true

[data.gnupg]
default_key = "DEFAULT KEYID"
hidden_encrypt_to = ["KEYID1", "KEYID2", ...]
pinentry_program = "/path/to/bin/pinentry"

[data.mutt]
domain = "MY.TLD"
alternates = ["EMAIL1", "EMAIL2", ...]
bcc = "BCC@MY.TLD"
pgp_default_key = "DEFAULT KEYID"
pgp_sign_as = "KEYID"
imaps_uri = "IMAP SERVER"
imaps_pass = "pass mail/imap.postsubmeta.net"
mailing_lists = ["MAILING LIST1", "MAILING LIST2", ...]

[data.emacs]
epg_user_id = "DEFAULT KEYID"
printer_name = "PRINTERNAME"
latitude = "LOCATION LATITUDE"
longitude = "LOCATION LONGITUDE"
timezone = "STD TZ NAME"
daylight_tz = "DAYLIGHT TZ NAME"
standard_tz = "STD TZ NAME"
utc_offset = "UTC OFFSET IN MINUTES"
location = "LOCATION NAME"
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
