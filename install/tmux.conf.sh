echo -e "Installing tmux conf..."

ln -fs $PWD/.tmux ~
ln -fs $PWD/.tmux/.tmux.conf ~
cp -f $PWD/.tmux/.tmux.conf.local ~