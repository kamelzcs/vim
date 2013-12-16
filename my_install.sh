ln -s ~/vimConf/.vimrc ~/.vimrc
ln -s ~/vimConf/.vim ~/.vim
ln -s ~/vimConf/.dircolors ~/.dircolors
ln -s ~/vimConf/.ackrc ~/.ackrc
ln -s ~/vimConf/my_configs.vim ~/.my_configs.vim
source ~/.vimrc
sudo apt-get install ctags
sudo apt-get install exuberant-ctags
eval `dircolors ~/.dircolors`
./set_dark.sh
