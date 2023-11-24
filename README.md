# restore
add alias =====> dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'" 
echo ".dotfiles" >> .gitignore
dotfiles config --local status.showUntrackedFiles no
git clone --bare https://github.com/glubbfreund/dotfiles $HOME/.dotfiles
