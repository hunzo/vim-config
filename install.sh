#bin/bash
# install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# install
cp vimrc ~/.vimrc
vim -c 'PlugInstall' -c 'qa!'

# set theme
mkdir ~/.vim/colors
ln -s ~/.vim/bundle/vim-monokai/colors/monokai.vim ~/.vim/colors/monokai.vim
echo 'colorscheme solarized8' >> ~/.vimrc

# set bashrc
echo 'set -o vi' >> ~/.bashrc

echo "show_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}" >> ~/.bashrc

echo 'export PS1="\u@\h \[\e[32m\]\w \[\e[91m\]\$(show_git_branch)\[\e[00m\]$ "' >> ~/.bashrc

. ~/.bashrc
