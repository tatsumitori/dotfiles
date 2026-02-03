-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- [[ Setting options ]]
-- See `:help vim.o`
-- NOTE: You can change these options as you wish!
--  For more options, you can see `:help option-list`

-- [Lang]
-- 表示言語を英語にする
-- vim.cmd('Language en_US.UTF-8')
-- 表示言語を日本語にする
-- vim.cmd("Laguage ja_JP.UTF-8")
-- ヘルプファイルの言語は日本語
vim.o.helplang = "ja"

--- NOTE: 以下、一旦コメントアウト

-- -- [File]
-- -- -- エンコーディングをUTF-8に設定
-- -- vim.o.fileencoding = 'utf-8'
-- -- -- ファイルフォーマットをunixに設定
-- -- vim.o.fileformat = 'unix'
--
-- -- 編集中のファイルが変更されたら自動で読み直す
-- vim.o.autoread = true
-- -- バッファが編集中でもその他のファイルを開けるように
-- vim.o.hidden = true
-- -- -- 入力中のコマンドをステータスに表示する
-- -- vim.o.showcmd = true
-- 折り返さない
vim.o.wrap = false
-- -- ウィンドウサイズの指定
-- vim.o.columns = 120
-- vim.o.lines = 25
-- ウィンドウ位置の指定
-- vim.o.winpos = { 150, 150 }
--
-- -- スワップファイルを作成しない
-- -- vim.o.swapfile = false
--
-- -- [Visual]
-- -- ルーラの表示
-- vim.o.ruler = true
-- -- 行番号の有効化
-- vim.o.number = true
-- -- 相対行番号の有効化
-- vim.o.relativenumber = true
-- -- ターミナルのタイトルをセットする
-- vim.o.title = true
-- -- 文脈によって解釈が異なる全角文字の幅を、2に固定する
-- vim.o.ambiwidth = "double"
-- -- 現在の行を強調表示
-- vim.o.cursorline = true
-- 現在の行を強調表示（縦）
vim.o.cursorcolumn = true
-- -- -- カレントウィンドウにのみ罫線を引く
-- -- augroup MyAutoCmd
-- --   autocmd WinLeave * set nocursorline
-- --   autocmd WinEnter,BufRead * set cursorline
-- --   au WinLeave * set nocursorline nocursorcolumn
-- --   au WinEnter * set cursorline cursorcolumn
-- -- augroup END
-- -- highlight clear CursorLine
-- -- highlight CursorLine gui=underline
-- -- highlight CursorLine cterm=underline,reverse ctermbg=darkgray
--
-- -- 行末の1文字先までカーソルを移動できるように
-- vim.o.virtualedit = "onemore"
-- -- -- インデントはスマートインデント
-- vim.o.smartindent = true
-- -- オートインデント
-- -- (改行前に前のインデントを継続する)
-- vim.o.autoindent = true
-- -- ブレークインデントの有効化
-- vim.o.breakindent = true
-- -- ビープ音を可視化
-- vim.o.visualbell = true
-- -- 括弧入力時の対応する括弧を表示
-- vim.o.showmatch = true
-- -- マッチしている括弧を表示するまでの時間(規定:5(0.5s))
-- vim.o.matchtime = 1
-- -- ステータスラインを常に表示
-- vim.o.laststatus = 2
-- -- ファイルリスト上で上キーを押すと、上のディレクトリに移動できる。
-- vim.o.wildmenu = true
-- -- コマンドラインの補完
-- vim.o.wildmode = "list:longest"
-- -- -- カーソルの回り込みができるようになる
-- -- vim.opt.whichwrap = { 'b', 's', '[', ']', '<', '>' }
-- -- -- バックスペースを、空白、行末、行頭でも使えるようにする
-- -- vim.opt.backspace = { 'indent', 'eol', 'start' }
-- -- 0で始まる数値を、8進数として扱わないようにする
-- vim.o.nrformats = "octal"
-- -- タブを打ち込むと、'shiftwidth'の数だけインデントする
-- vim.o.smarttab = true
-- -- タブを半角スペースで挿入
-- -- (タブ入力を複数の空白入力に置き換える(既存のタブには影響しない))
-- vim.o.expandtab = true
-- -- vimが自動で生成する（読み込み時等）tab幅をスペースN個分にする
-- -- (自動インデントでずれる幅)
-- vim.o.shiftwidth = 2
-- -- タブ幅をスペースN個分にする
-- -- (連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅)
-- vim.o.softtabstop = 2
-- -- 行頭以外のTab文字の表示幅（スペースいくつ分)
-- -- (画面上でタブ文字が占める幅)
-- vim.o.tabstop = 2
-- -- Don't show the mode, since it's already in the status line
-- -- モードを表示するかの設定
-- -- (別でステータスラインに設定しているため無効化)
-- vim.o.showmode = false
--
-- [検索系]
-- 検索時の大文字・小文字の無視設定
vim.o.ignorecase = true
-- 検索文字列に\Cか大文字が含まれている場合は区別して検索する
vim.o.smartcase = true
-- -- -- 検索文字列入力時に順次対象文字列にヒットさせる
-- -- vim.o.incsearch = true
-- -- -- 検索時に最後まで行ったら最初に戻る
-- -- vim.o.wrapscan = true
-- -- -- 検索語をハイライト表示
-- -- vim.o.hlsearch = true
--
-- -- -- [印刷設定]
-- -- -- set background=light
-- -- set printoptions=number:y,header:0,syntax:y,left:5pt,right:5pt,top:10pt,bottom:10pt
-- -- set printfont=Consolas:h8
-- -- set printmbfont=r:MS_Mincho:h8,b:MS_Gothic:h8
--
-- -- Enable mouse mode, can be useful for resizing splits for example!
-- -- マウスモードを有効化
-- vim.o.mouse = "a"
--
-- -- Sync clipboard between OS and Neovim.
-- --  Schedule the setting after `UiEnter` because it can increase startup-time.
-- --  Remove this option if you want your OS clipboard to remain independent.
-- --  See `:help 'clipboard'`
-- --  クリックボードの同期(レジスタとクリップボードを共有)
-- vim.schedule(function()
--   vim.o.clipboard = "unnamedplus"
--   -- vim.opt.clipboard = { 'unnamed', 'autoselect' }
--   -- vim.api.nvim_set_keymap("v", "<C-c>", '"+y', { noremap = true, silent = true }) -- コピー
--   -- vim.api.nvim_set_keymap("n", "<C-v>", '"+p', { noremap = true, silent = true }) -- 貼り付け
--   -- vim.api.nvim_set_keymap("i", "<C-v>", '<C-r>+', { noremap = true, silent = true }) -- インサートモードの貼り付け
-- end)
--
-- -- Save undo history
-- -- Undoファイルの有効化
-- vim.o.undofile = true

-- Keep signcolumn on by default
-- サインカラムの有効化
vim.o.signcolumn = "yes"

-- Decrease update time
-- スワップファイルの更新時間
vim.o.updatetime = 5000

-- -- Decrease mapped sequence wait time
-- -- キーマッピングシーケンスの待ち時間
-- vim.o.timeoutlen = 300
--
-- -- Configure how new splits should be opened
-- -- 分割画面の方向設定
-- -- 横に分割する場合は、右に新しいウインドウを作成(true)
-- vim.o.splitright = true
-- -- 縦に分割する場合は、下に新しいウインドウを作成(true)
-- vim.o.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`

--  Notice listchars is set using `vim.opt` instead of `vim.o`.
--  It is very similar to `vim.o` but offers an interface for conveniently interacting with tables.
--   See `:help lua-options`
--   and `:help lua-options-guide`
--   リストモードの有効化
--   有効化した場合、listcharsにある文字が反映される
vim.o.list = true
-- vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
vim.opt.listchars = { tab = "»-»", trail = "-", eol = "~", extends = "<", precedes = ">", nbsp = "%" }

-- -- Preview substitutions live, as you type!
-- -- コマンド結果のプレビュー(split=分割)
-- vim.o.inccommand = "split"

-- Minimal number of screen lines to keep above and below the cursor.
-- カーソルの上下に表示する行数の設定
vim.o.scrolloff = 25
-- カーソルの左右に表示する列数の設定
vim.o.sidescrolloff = 100

-- -- if performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
-- -- instead raise a dialog asking if you wish to save the current file(s)
-- -- See `:help 'confirm'`
-- vim.o.confirm = true

-- カラースキームの設定
-- colorscheme molokai
-- vim.cmd.colorscheme("molokai")

-- vim: ts=2 sts=2 sw=2 et
