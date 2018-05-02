# Install Neovim config

+ Install [Neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim)
+ Install [`vim-plug` for Neovim](https://github.com/junegunn/vim-plug/wiki/tutorial)
+ Copy `init.vim` in `$HOME/.config/nvim/init.vim`
+ Enter these commands:
    ```
    cd $HOME/.config/nvim
    virtualenv --python=`which python2` p2venv
    virtualenv --python=`which python3` p3venv

    source p2venv/bin/activate
    pip install neovim
    deactivate

    source p3venv/bin/activate
    pip3 install neovim
    deactivate
    ```
+ Start `nvim`, and run `:PlugUpdate`
