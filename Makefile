.PHONY: link_dotfiles
link_dotfiles:
	ln -sfn ~/.dotfiles/zshrc ~/.zshrc
	ln -sfn ~/.dotfiles/vimrc ~/.vimrc
	ln -sfn ~/.dotfiles/p10k.zsh ~/.p10k.zsh
	ln -sfn ~/.dotfiles/gitconfig ~/.gitconfig
	echo "...all done"

# write the vscode extentions to file
.PHONY: update
update:
	@echo "writing vscode extension to file ..."
	@code --list-extensions | xargs -L 1 echo code --install-extension > ./VSCode/extensions.sh
	@echo "Done"
