" Show end of line whitespace except for line you are on
autocmd InsertEnter * syn clear EOLWS | syn match EOLWS excludenl /\s\+\%#\@!$/
autocmd InsertLeave * syn clear EOLWS | syn match EOLWS excludenl /\s\+$/
highlight EOLWS ctermbg=red guibg=red

syntax enable
colorscheme koehler

" resize splits when visited, never have a split less than 5 lines
set winheight=30
set winminheight=5

set background=dark
set autoindent
set smartindent
set number

" Clear all whitespace by hitting F9
nnoremap <F9> :%s/\s*$//<CR>
" Quick comment current line
:map <F4> I// <Esc><Esc>

" save as sudo user
cmap w!! w !sudo dd of=%


" from paul irish dotfiles
set title
set noerrorbells
set visualbell
set relativenumber " Use relative line numbers. Current line is still in status bar.
set cursorline

" Highlight the cursorline, rather than use an underline (can't see underscores with underline)
hi CursorLine term=bold cterm=bold guibg=Grey40

" Remap :W to :w
command W w

" JSON
au BufRead,BufNewFile *.json set ft=json syntax=javascript
