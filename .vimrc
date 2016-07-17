"初心者にオススメな.vimrcのサンプル
"http://vimwiki.net/?vimrc%2F9
set nocompatible
syntax enable
syntax on
"colorscheme desert
colorscheme molokai
filetype indent plugin on

"nnoremap <expr><silent> <C-c> quickrun#is_running( ? quickrun#sweep_sessions( : "\<C-c>"))

runtime! rc/*.vim

"プラグインを管理するやーつ、neobundle
if &compatible
    set nocompatible               " Be iMproved
endif

set runtimepath^=/home/lulucan/.vim/bundle/neobundle.vim/
call neobundle#begin(expand('/home/lulucan/.vim/bundle'))
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'

NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }
NeoBundle 'thinca/vim-quickrun'
call neobundle#end()
filetype plugin indent on
NeoBundleCheck

let g:quickrun_config={'*': {'split': 'vertical'}}
set splitright
