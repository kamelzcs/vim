ln -s ~/.vim_runtime/.vimrc ~/.vimrc
ln -s ~/.vim_runtime/.vim ~/.vim
ln -s ~/.vim_runtime/.dircolors ~/.dircolors
source ~/.vimrc
sudo apt-get install ctags
sudo apt-get install exuberant-ctags
eval `dircolors ~/.dircolors`
./set_dark.sh
