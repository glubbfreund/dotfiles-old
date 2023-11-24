# restore
<ul>
<li>
  add alias =====> dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'" 
</li>
<li>
  echo ".dotfiles" >> .gitignore   
</li>
<li>
  git clone --bare https://github.com/glubbfreund/dotfiles $HOME/.dotfiles
</li>
<li>
  dotfiles config --local status.showUntrackedFiles no
</li>
<li>
  mkdir -p .dotfiles-backup && \
  dotfiles checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | \
  xargs -I{} mv {} .dotfiles-backup/{}
</li>
</ul>
