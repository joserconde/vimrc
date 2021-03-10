# vimrc

My vimrc files

## Installation

* Clone the repository into the ~/.vim/ folder.
* Create a symbolic link from ~/.vimrc to ~/.vim/vimrc
* Initialice the git submodule and update it.

```bash
ln -s ~/.vim/vimrc ~/.vimrc
cd ~/.vim/
git submodule init
git submodule update
```

One line deploy
```bash
mv ~/.vim ~/.vim.bak; mv ~/.vimrc ~/.vimrc.bak; git clone git@github.com:joserconde/vimrc.git ~/.vim; ln -s ~/.vim/vimrc ~/.vimrc; cd ~/.vim/; git submodule init; git submodule update
```

Enjoy! :blush:
