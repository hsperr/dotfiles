install: backup
	/bin/ln -sfv ~/dotfiles/vimrc     ~/.vimrc
	/bin/ln -sfv ~/dotfiles/bashrc    ~/.bashrc
	/bin/ln -sfv ~/dotfiles/git-completion.bash    ~/git-completion.bash
	/bin/ln -sfv ~/dotfiles/iterm2_shell_integration.bash    ~/.iterm2_shell_integration.bash
	/bin/ln -sfv ~/dotfiles/gitconfig    ~/.gitconfig

backup:
	mkdir -p ~/dotfiles/backups
	@/bin/cp -nv ~/.vimrc     ~/dotfiles/backups/vimrc
	@/bin/cp -nv ~/.bashrc     ~/dotfiles/backups/bashrc
	@/bin/cp -nv ~/.gitconfig     ~/dotfiles/backups/gitconfig

delete:
	rm -rfv ~/dotfiles/backup
