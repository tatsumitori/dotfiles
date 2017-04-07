call vimfiler#custom#profile('default', 'context', {
     \ 'safe' : 0,
     \ 'auto_expand' : 1,
     \ 'parent' : 0,
     \ })
"vim default explore -> vimfiler
let g:vimfiler_as_default_explorer = 1

"buffer directory
" nnoremap <silent> fe :<C-u>VimFilerBufferDir -quit<CR>
nnoremap [VimFiler] <Nop>
nmap <Space>f [VimFiler]
nnoremap [VimFiler]  :<C-u>VimFiler
nnoremap [VimFiler]f :<C-u>VimFiler<CR>
nnoremap [VimFiler]b :<C-u>VimFilerBufferDir -quit -status<CR>
nnoremap [VimFiler]t :<C-u>VimFilerBufferDir -quit -status -tab<CR>
nnoremap [VimFiler]n :<C-u>VimFilerExplorer -find -status<CR>
" nerdtree like
" nnoremap <C-e> :<C-u>VimFilerBufferDir -split -winwidth=120 -toggle -no-quit<CR>

"key mapping
autocmd MyAutoCmd FileType vimfiler call s:vimfiler_my_settings()
function! s:vimfiler_my_settings()
  " nnoremap <silent><buffer><expr> s vimfiler#do_switch_action('vsplit')
  " nnoremap <silent><buffer><expr> v vimfiler#do_switch_action('split')
  nnoremap <silent><buffer><expr> t vimfiler#do_action('tabopen')
  nmap <buffer> <CR> <Plug>(vimfiler_expand_or_edit)
endfunction

" Textmate icons
let g:vimfiler_tree_leaf_icon = ' '
let g:vimfiler_tree_opened_icon = '~'
let g:vimfiler_tree_closed_icon = '+'
let g:vimfiler_file_icon = '-'
let g:vimfiler_marked_file_icon = '*'

