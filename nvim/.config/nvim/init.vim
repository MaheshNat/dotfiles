" Vim-plug initialization
call plug#begin('~/.local/share/nvim/plugged')

" Plugins
Plug 'asvetliakov/vim-easymotion'  " Replace Hop with EasyMotion
Plug 'rhysd/clever-f.vim'  " Keep clever-f

" Add any other plugins here

" Initialize plugin system
call plug#end()

set clipboard=unnamedplus
inoremap jk <Esc>
inoremap <C-d> <C-d>zz
inoremap <C-u> <C-u>zz

" " EasyMotion configuration
let g:EasyMotion_do_mapping = 0 " Disable default mappings
let g:EasyMotion_smartcase = 1 " Turn on case-insensitive feature
let g:EasyMotion_inc_highlight = 1 " Highlight as you type
let g:EasyMotion_off_screen_search = 0 " Remove the 2-character limit

" Use 'jl' to trigger EasyMotion's incremental search and clear highlights afterwardsnoh
nmap jl <Plug>(easymotion-sn)
omap jl <Plug>(easymotion-tn)

" clever-f.vim configuration
let g:clever_f_ignore_case = 1
let g:clever_f_smart_case = 1