echo -e "Installing tmux conf..."

ln -sf .tmux/,tmux.conf ~/.tmux.conf
cp .tmux/.tmux.conf.local ~/.tmux.conf.local
