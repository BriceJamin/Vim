# Vim.git
My conf and plugins are saved in this repository.\
Each plugin is installed with [pathogen](https://github.com/tpope/vim-pathogen) with submodules.\
I follow documentation on how [Using git-submodules to version-control Vim plugins](https://gist.github.com/manasthakur/d4dc9a610884c60d944a4dd97f0b3560)\
Seem since Vim 8.0, [vim has his own way to load unload plugin](https://gist.github.com/manasthakur/ab4cf8d32a28ea38271ac0d07373bb53#lazy-loading-plugins-using-vim-8-packages).\
This project doesnt use it yet, but it [can be possible to remove pathogen and let vim do it himslelf](https://shapeshed.com/vim-packages/) by using this directories :.
- `pack/plugins/start/` : always loaded
- `pack/plugins/opt/` : loaded optionally with command `:packadd foo` and `:helptags ALL`


## Replicating the repository on a machine
- Clone the repository (_recursively_ to clone plugins as well):
    ```
    git clone --recursive git@github.com:BriceJamin/Vim.git ~/.vim
    ```
    
- Symlink `.vimrc`:
    ```
    ln -s ~/.vim/vimrc ~/.vimrc
    ```
    
- Generate helptags for plugins:
    ```
    vim
    :helptags ALL
    ```
##
