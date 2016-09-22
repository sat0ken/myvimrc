let mapleader = "\<Space>"

imap jj <esc>
imap 44 $
imap 55 %
imap 66 &
imap -- =
imap ^^ ~
imap mm my

"imap <Leader>s <Left>
"imap <Leader>l <Right>
"imap <Leader>j <Down>
"imap <Leader>k <Up>
"imap <S-j> <PageDown>
"imap <S-k> <PageUP>
inoremap { {}<LEFT>
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap [ []<LEFT>
inoremap [<Enter> []<Left><CR><ESC><S-o>
inoremap ( ()<LEFT>
inoremap (<Enter> ()<Left><CR><ESC><S-o>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>
inoremap < <><LEFT>

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

