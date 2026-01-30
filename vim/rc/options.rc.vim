" 256色指定
" set t_Co=256

" シンタックスハイライトの設定
" syntax enable

" --- Encoding ---
" 文字コード指定(UTF-8)
" set enc=UTF-8
set fenc=UTF-8
set ff=unix
" set tenc=UFT-8

" --- Input Setting
" 編集中のファイルが変更されたら自動で読み直す
set autoread
" バッファが編集中でもその他のファイルを開けるように
set hidden
" 入力中のコマンドをステータスに表示する
set showcmd
" 折り返さない
set nowrap
" ウィンドウサイズの指定
set columns=120
set lines=24

" ウィンドウ位置の指定
winpos 150 150

" --- 見た目系 ---
" ルーラの表示
set ruler
" 行番号を表示
set number
" ターミナルのタイトルをセットする
set title
" 文脈によって解釈が異なる全角文字の幅を、2に固定する
set ambiwidth=double
" 現在の行を強調表示
set cursorline
  " カレントウィンドウにのみ罫線を引く
  " augroup cch
  augroup MyAutoCmd
    " autocmd! cch
    autocmd WinLeave * set nocursorline
    autocmd WinEnter,BufRead * set cursorline
  augroup END

highlight clear CursorLine
highlight CursorLine gui=underline
" highlight CursorLine ctermbg=black guibg=black
highlight CursorLine cterm=underline,reverse ctermbg=darkgray

" 現在の行を強調表示（縦）
set cursorcolumn
" 行末の1文字先までカーソルを移動できるように
set virtualedit=onemore
" インデントはスマートインデント
set smartindent
" ビープ音を可視化
set visualbell
" 括弧入力時の対応する括弧を表示
set showmatch
" マッチしている括弧を表示するまでの時間(規定:5(0.5s))
set matchtime=1
" ステータスラインを常に表示
set laststatus=2
" ファイルリスト上で上キーを押すと、上のディレクトリに移動できる。
set wildmenu
" コマンドラインの補完
set wildmode=list:longest
" カーソルの回り込みができるようになる
set whichwrap=b,s,[,],<,>
" バックスペースを、空白、行末、行頭でも使えるようにする
set backspace=indent,eol,start
" 0で始まる数値を、8進数として扱わないようにする
set nrformats=octal
" カーソルの上下に表示する行数の設定
set scrolloff=25
" カーソルの左右に表示する列数の設定
set sidescrolloff=120

" --- Tab系 ---
" オートインデント
" (改行前に前のインデントを継続する)
set autoindent
" タブ、空白、改行の可視化
set list
" listで表示される文字のフォーマットを指定する
set listchars=tab:>-,trail:-,eol:~,extends:<,precedes:>,nbsp:%

" 全角スペースをハイライト表示
function! ZenkakuSpace()
    highlight ZenkakuSpace cterm=reverse ctermfg=DarkMagenta gui=reverse guifg=DarkMagenta
endfunction

if has('syntax')
    augroup ZenkakuSpace
        autocmd! ZenkakuSpace
        autocmd ColorScheme       * call ZenkakuSpace()
        autocmd VimEnter,WinEnter * match ZenkakuSpace /　/
    augroup END
    call ZenkakuSpace()
endif
" タブを打ち込むと、'shiftwidth'の数だけインデントする
set smarttab
" タブを半角スペースで挿入
" (タブ入力を複数の空白入力に置き換える(既存のタブには影響しない))
set expandtab
" vimが自動で生成する（読み込み時等）tab幅をスペースN個分にする
" (自動インデントでずれる幅)
" set shiftwidth=4
set shiftwidth=2
" タブ幅をスペースN個分にする
" (連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅)
" set softtabstop=4
set softtabstop=2
" 行頭以外のTab文字の表示幅（スペースいくつ分)
" (画面上でタブ文字が占める幅)
" set tabstop=4
set tabstop=2
" 改行時などに、自動でインデントを設定してくれる
" (改行時に入力された末尾に合わせて次の行のインデントを増減する)
set smartindent

" --- 検索系 ---
" 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase
" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase
" 検索文字列入力時に順次対象文字列にヒットさせる
set incsearch
" 検索時に最後まで行ったら最初に戻る
set wrapscan
" 検索語をハイライト表示
set hlsearch


" --- 印刷設定 ---
" set background=light
set printoptions=number:y,header:0,syntax:y,left:5pt,right:5pt,top:10pt,bottom:10pt
set printfont=Consolas:h8
set printmbfont=r:MS_Mincho:h8,b:MS_Gothic:h8


" vim-css3-syntaxの設定 ---------------------------------------------------------------
augroup VimCSS3Syntax
  autocmd! VimCSS3Syntax
  autocmd FileType css setlocal iskeyword+=-
augroup END

" カラースキームの設定
colorscheme molokai

