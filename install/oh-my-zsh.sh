# Install Oh-My-ZSH
if [ ! -d ~/.oh-my-zsh ]; then
	echo -e "Installing Oh-My-ZSH...";
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

	ZSH_CUSTOM=~/.oh-my-zsh/custom

	# Theme
	echo "- cloning plugins to ${ZSH_CUSTOM}/themes"
	git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM}/themes/powerlevel10k

	# Plugins
	echo "- cloning plugins to ${ZSH_CUSTOM}/plugins"
	git clone https://github.com/chrissicool/zsh-256color ${ZSH_CUSTOM}/plugins/zsh-256color
	git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM}/plugins/zsh-autosuggestions
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM}/plugins/zsh-syntax-highlighting

else
	echo -e "Oh-My-Zsh already installed.";
fi;



