# dotfiles

Clone into `~/dotfiles`.

Create backups in `~/dotfiles/backups/` and create symlinks. Won't override backups, aborts instead.
```sh
make install
```

Delete backups to allow new `make install`.
```sh
make delete
```

I heavyly copied was inspired by:

https://github.com/wellle/dotfiles/

https://github.com/mbrochh/vim-as-a-python-ide
