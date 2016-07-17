let mapleader = "\<Space>"

imap jj <esc>
imap <Leader>h <Left>
imap <Leader>l <Right>
imap <Leader>j <Down>
imap <Leader>k <Up>
imap <S-j> <PageDown>
imap <S-k> <PageUP>
inoremap {} {}<LEFT>
inoremap [] []<LEFT>
inoremap () ()<LEFT>
inoremap "" ""<LEFT>
inoremap '' ''<LEFT>
inoremap <> <><LEFT>

nnoremap <S-j> <PageDown>
nnoremap <S-k> <PageUP>
nnoremap <Leader>c :wq<CR>
nnoremap <Leader>w :w<CR>

"perlコマンド実行
nnoremap <Leader>d :w !perl<CR>

"Visualモードでコピペ
nnoremap <Leader>v 0v$h
nnoremap <Leader>d 0v$hx
noremap <Leader>y 0v$hy

"quickrunを閉じる
nnoremap <Leader>q :<C-u>bw! \[quickrun\ output\]<CR>

