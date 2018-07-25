# Vim.git
My conf and plugins are saved in this repository.
Each plugin is installed with [pathogen](https://github.com/tpope/vim-pathogen) with submodules.
I follow documentation on how [Using git-submodules to version-control Vim plugins](https://gist.githubusercontent.com/manasthakur/d4dc9a610884c60d944a4dd97f0b3560/raw/46d2a8015fbd4f8d383773f35e5dbf4158977608/submodules.md)
Seem since Vim 8.0, [vim has his own way to load unload plugin](https://gist.github.com/manasthakur/ab4cf8d32a28ea38271ac0d07373bb53#lazy-loading-plugins-using-vim-8-packages). This project doesnt use it yet.
### Replicating the repository on a machine
- Clone the repository (_recursively_ to clone plugins as well):

    ```
    git clone --recursive https://github.com/BriceJamin/Vim.git
    ```
    
- Symlink `.vim` and `.vimrc`:

    ```
    ln -sf reponame ~/.vim
    ln -sf reponame/vimrc ~/.vimrc
    ```
    
- Generate helptags for plugins:
    ```
    vim
    :helptags ALL
    ```
