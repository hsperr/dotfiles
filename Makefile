install: backup
	/bin/ln -sfv ~/dotfiles/vimrc     ~/.vimrc

backup:
	mkdir -p ~/dotfiles/backups
	@/bin/cp -nv ~/.vimrc     ~/dotfiles/backups/vimrc

delete:
	rm -rfv ~/dotfiles/backup
