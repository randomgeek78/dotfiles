From https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/

```
echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> ~/.bashrc
source ~/.bash_profile
echo ".cfg" >> .gitignore
git clone --bare https://github.com/randomgeek78/dotfiles.git .cfg/
config checkout
config config --local status.showUntrackedFiles no
```
