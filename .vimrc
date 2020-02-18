"break arrow keys habit"

nnoremap <Up> <NOP>
nnoremap <Down> <NOP>
nnoremap <Left> <NOP>
nnoremap <Right> <NOP>
nnoremap h <NOP>
nnoremap l <NOP>

"Auto remove trailing whitespace
autocmd BufWritePre * %s/\s\+$//e


"set highlights on for search items
set hlsearch
"set the with of tabstop to 2 spaces
set tabstop=2
"make indentation to correnspond to one tab
set shiftwidth=2
"Allow line numbers
set number
"Allow relative numbers for jumping lines
set rnu
"Always display the status line
set laststatus=2
"Don't try to be compatible with Vi
set nocompatible
"Enable pathogen package manager on
execute pathogen#infect()
"Detect file types
filetype plugin indent on
"Turn syntax highlighting on for programing
syntax on
"Use utf-8 Encoding
set encoding=utf-8
"Choose theme for airline
let g:airline_theme='powerlineish'
"Choose icons for airline bar
let g:Powerline_symbols='unicode'
"Choose fonts for airline theme
let g:airline_powerline_fonts = 1
"Enable 256 colors
set t_Co=256
"Add warnings to status bar
set statusline+=%#warningmsg#
"Gice syntastic access to the status line
set statusline+=%{SyntasticStatuslineFlag()}
"Back to normal color
set statusline+=%*
"Always populate location list with errors
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
"check for errors on open and on save exit
let g:syntastic_check_on_wq = 0
"Use elm-vim for source code stuff in elm
"Run format on save of elm file
let g:elm_format_autosave = 0
"Allow systastic to show warnings
let g:elm_make_show_warnings = 0
"send elm warnings to syntastic
let g:elm_syntastic_show_warnings = 1
"Disable airline tagbar for faster opening times
let g:airline#extensions#tagbar#enabled = 0

"Open Nerdtree automatically when vim starts up opining a directory
"I usually start working by navigating to the folder and typing [vim .]
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

"Build Fuzzy Finder
"Search and autocomplete into subfolders
set path+=**
"Append to existing value of path
"the 2 stars tells vim to search Subdirectorties recursively in the folder vim is running

"Use Tab for auto completion
set wildmenu

"Create a `tags` file lets vim run the below on cmd
command! MakeTags !ctags -R .

"Ignore EOSIO Hpp error"
let g:syntastic_quiet_messages = { "regex": "fatal error: 'eosio/eosio.hpp' file not found\|fatal error: 'eosiolib/eosio.hpp' file not found" }

"Choose version of c++ compiler to use"
let g:syntastic_cpp_compiler_options = ' -std=c++11'

"Use rustc as syntax checker for rust"
let g:syntastic_rust_checkers = ['cargo']

"Enable rust format on save"
let g:rustfmt_autosave = 1

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

" bind \ (backward slash) to grep shortcut
command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!

" map \"
nnoremap \ :Ag<SPACE>

