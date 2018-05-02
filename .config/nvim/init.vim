" Plugins will be downloaded in this directory
call plug#begin('~/.vim/plugged')

" List of plugins
Plug 'tpope/vim-sensible'
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'zchee/deoplete-go', { 'do': 'make' }

" plugins end
call plug#end()

" syntax coloring
syntax on
colorscheme pablo

" read config from files
set modeline
set modelines=2

" map § to escape for macbook pros w/o escape buttons
map § <esc>

" general settings
set number
set expandtab
set softtabstop=0
set shiftround
set tabstop=2
set shiftwidth=2

" store backups
set backupcopy=yes

" init plugins
call deoplete#enable()

" python locations for neovim
let g:python_host_prog='~/.config/nvim/p2venv/bin/python'
let g:python3_host_prog='~/.config/nvim/p3venv/bin/python3'
