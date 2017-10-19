"set the with of tabstop to 4 spaces 
set tabstop=4
"make indentation to correnspond to one tab 
set shiftwidth=4
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
"Turn syntax highlighting on for programing
syntax on
"Detect file types
filetype plugin indent on
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
"Use eslint with syntastic
let g:syntastic_javascript_checkers = ['eslint']
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
"Disable auto format to include files without @format 
let g:prettier#autoformat = 0
"Run prettier for every change async 
" when running at every change you may want to disable quickfix
let g:prettier#quickfix_enabled = 0

let g:prettier#autoformat = 0
autocmd BufWritePre,TextChanged,InsertLeave *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql PrettierAsync

"Change prettier print width 
let g:prettier#config#print_width = 80
"Remove trailing commas with prettier
let g:prettier#config#trailing_comma = 'none' 
"Risky but might be worth it no semi colons
let g:prettier#config#semi = 'false'
"Use flow to parse 
let g:prettier#config#parser = 'flow'

