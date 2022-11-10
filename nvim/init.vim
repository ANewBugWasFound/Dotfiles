"General Settings
set nocursorline splitbelow splitright wildmode=longest,list,full
set shiftwidth=4 autoindent smartindent tabstop=4 softtabstop=4 expandtab 
set fillchars+=eob:\ 
au BufRead,BufNewFile *.fountain set filetype=fountain

"Status Line
set statusline=
set statusline+=%#NonText#
set statusline+=%=
set statusline+=\ %f
set statusline+=\ 
set statusline+=%#CursorLineNr#
set statusline+=\ %y
set statusline+=\ %r
set statusline+=%#IncSearch#
set statusline+=\ %l/%L
set statusline+=\ [%c]
set relativenumber
"Key-bindings
nnoremap <M-k> mz:m-2<cr>`z 
nnoremap <M-j> mz:m+<cr>`z
source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/everforest.vim
nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>
lua << END
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'everforest',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {'nerdtree'}
}
END
