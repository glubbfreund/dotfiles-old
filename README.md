# my dotfiles, using gnome and dwm
## whats inside?
My wallpapers, scripts, css file for improved workspace indicator (gnome), "plymouth wait for animation" file (only copied to documents), grub config (only copied to documents), colors.h for dwm and dmenu, Nautilus Templates, Xresources (dpi set), fehbg file, profile file (path settings), ZSH Settings, Dunst config, ranger config, tmux config, picom config, starship config and the following refs: nvim config, dwm source, dmenu source
## how to restore
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
<li>
  dotfiles checkout (with force parameter)
</li>
</ul>
