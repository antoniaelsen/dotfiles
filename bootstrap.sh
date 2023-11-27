#!/usr/bin/env bash



function doIt() {
	echo -e "Installing dotfiles..."

	echo -e "Updating submodules...";
	git submodule update --init

	echo -e "Copying files...";
	rsync -ah --no-perms .dotfiles/ ~;
	ln -fs "$PWD/nvim" ~/.config

	for f in install/*; do
		echo -e "Running \"$f\"...";
		source "$f";
	done
	
	echo -e "Done.";

	# get current shelll
	SHELL=$(echo $SHELL | awk -F/ '{print $NF}');

	# change shell to zsh if not already
	if [ "$SHELL" != "zsh" ]; then
		echo -e "Changing shell to zsh...";
		chsh -s $(which zsh);
	fi;
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt;
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt;
	fi;
fi;
unset doIt;
