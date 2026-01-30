" Unite起動
" 起動時にインサートモードで開始
let g:unite_enable_start_insert = 1
" Unite Prefix Key
nnoremap [unite] <Nop>
nmap <Space>u [unite]
" mappings
nnoremap [unite]  :<C-u>Unite<CR>
nnoremap [unite]b :<C-u>Unite<Space>buffer<CR>
nnoremap [unite]f :<C-u>UniteWithBufferDir -buffer-name=files buffer bookmark file<CR>
nnoremap [unite]r :<C-u>Unite<Space>register<CR>
nnoremap [unite]R :<C-u>UniteResume<CR>
" nnoremap <silent> [unite]c   :<C-u>UniteWithCurrentDir -buffer-name=files buffer file_mru bookmark file<CR>
"
