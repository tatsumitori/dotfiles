" --- キーマップ関連 ---
" 再割当無し : 再割当て有り : モード
" noremap    : map  : ノーマルモード＋ビジュアルモード
" noremap!   : map! : コマンドラインモード＋インサートモード
" nnoremap   : nmap : ノーマルモード
" vnoremap   : vmap : ビジュアル(選択)モード
" cnoremap   : cmap : コマンドラインモード
" inoremap   : imap : インサート(挿入)モード

" ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>

" 行頭へ移動(C-a)、行末へ移動(C-e)
" inoremap <C-e> <Esc>$a
" inoremap <C-a> <Esc>^i
" noremap <C-e> <Esc>$a
" noremap <C-a> <Esc>^i

" 折り返し時に表示行単位で移動するgj, gkと、実際の行移動のj, kを入れ替える
nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k

" システムメニュー呼び出し(windows)
map <silent> <M-Space> :simalt ~<CR>

" フォント設定呼び出し
" nnoremap <Space>z :set guifont=*<CR>

" QuickFixの短縮表記設定
nnoremap [q :cprevious<CR>    " 前へ
nnoremap ]q :cnext<CR>        " 次へ
nnoremap [Q :<C-u>cfirst<CR>  " 最初へ
nnoremap ]Q :<C-u>clast<CR>   " 最後へ

