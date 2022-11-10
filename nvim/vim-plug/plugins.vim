" This is the skeleton of plugins.vim

" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
	silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
 	  \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	"autocmd VimEnter * PlugInstall
	"autocmd VimEnter * PlugInstall | source $MYVIMRC
endif


call plug#begin('~/.config/nvim/autoload/plugged')

    " Here you can plug all the plugins you want
    " Let's try to plug these packages
    
    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
	Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}
	" Auto pairs for '(' '[' '{'
	Plug 'jiangmiao/auto-pairs'
    Plug 'sainnhe/everforest'
	Plug 'nvim-lualine/lualine.nvim'
    Plug 'ThePrimeagen/vim-be-good'
call plug#end()
