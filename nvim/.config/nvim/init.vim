" Vim-plug initialization
call plug#begin('~/.local/share/nvim/plugged')

" Plugins
Plug 'phaazon/hop.nvim'  " Replace EasyMotion with Hop

" Add any other plugins here

" Initialize plugin system
call plug#end()

set clipboard=unnamedplus
inoremap jk <Esc>
inoremap <C-d> <C-d>zz
inoremap <C-u> <C-u>zz

" Hop configuration
lua << EOF
require'hop'.setup {
  keys = 'etovxqpdygfblzhckisuran',
  case_insensitive = true,
  jump_on_sole_occurrence = true,
  create_hl_autocmd = true,
}

vim.api.nvim_set_keymap('n', 'jl', "<cmd>HopPattern<CR>", {noremap = true})
vim.api.nvim_set_keymap('o', 'jl', "<cmd>HopPattern<CR>", {noremap = true})
vim.api.nvim_set_hl(0, 'HopPreview', { fg = '#e0e0e0', bg = '#303030' })
EOF

" Set a lower timeoutlen (default is 1000ms)
set timeoutlen=75