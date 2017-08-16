"初心者にオススメな.vimrcのサンプル
"http://vimwiki.net/?vimrc%2F9
set nocompatible
syntax enable
syntax on
"colorscheme desert
colorscheme molokai
filetype off
filetype plugin indent off

"nnoremap <expr><silent> <C-c> quickrun#is_running( ? quickrun#sweep_sessions( : "\<C-c>"))

runtime! rc/*.vim

"プラグインを管理するやーつ、neobundle
if &compatible
    set nocompatible               " Be iMproved
endif

set runtimepath^=/home/lulucan/.vim/bundle/neobundle.vim/
call neobundle#begin(expand('/home/lulucan/.vim/bundle'))
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'

NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }
NeoBundle 'thinca/vim-quickrun'

"golang用
NeoBundle 'fatih/vim-go'
NeoBundle 'SirVer/ultisnips'

"Perl用
NeoBundle 'vim-perl/vim-perl'

"Python用
NeoBundle 'davidhalter/jedi-vim'

call neobundle#end()
filetype plugin indent on
NeoBundleCheck

" Disable AutoComplPop."
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3

let g:neocomplete#enable_underbar_completion = 1
let g:neocomplete#enable_camel_case_completion  =  1
let g:neocomplete#max_list = 20
let g:neocomplete#auto_completion_start_length = 2

"Same as JavaScript
""let g:neocomplete#force_omni_input_patterns.go = '[^. \t]\.\%(\h\w*\)\?'

let g:neocomplete#sources#dictionary#dictionaries = {
  \ 'default' : '',
  \ 'vimshell' : $HOME.'/.vimshell_hist',
  \ 'scheme' : $HOME.'/.gosh_completions'
    \ }

" Define keyword
if !exists('g:neocomplete#keyword_patterns')
  let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" <CR>: close popup and save indent.
""inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
""function! s:my_cr_function()
""  return (pumvisible() ?  "\<C-y>" : "" ) . "\<CR>"
""  return (pumvisible() ?  "\<C-y>" : "" )
""endfunction

" <TAB>: completion.>"
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"


" Enable omni completion."
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType python setlocal completeopt-=preview


" Enable heavy omni completion
"if !exists('g:neocomplete#sources#omni#input_patterns')'
"  let g:neocomplete#sources#omni#input_patterns = {}
"endif

""let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'

"filetype plugin indent on
let g:quickrun_config={'*': {'split': 'vertical'}}
set splitright
