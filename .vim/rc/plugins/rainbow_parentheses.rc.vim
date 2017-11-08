augroup MyAutoCmdFTClojure
  autocmd! MyAutoCmdFTClojure
  " au VimEnter * RainbowParenthesesToggle
  au Syntax * RainbowParenthesesLoadRound
  au Syntax * RainbowParenthesesLoadSquare
  au Syntax * RainbowParenthesesLoadBraces
  au Syntax * RainbowParenthesesLoadChevrons
  au BufEnter * cal rainbow_parentheses#clear()
  au BufEnter *.clj cal rainbow_parentheses#activate()
augroup END

let g:rbpt_colorpairs = [
    \ ['brown',       'SlateBlue2'],
    \ ['Darkblue',    'SpringGreen3'],
    \ ['darkgray',    'MediumOrchid3'],
    \ ['darkgreen',   'DarkOrange'],
    \ ['darkcyan',    'SlateBlue2'],
    \ ['darkred',     'SpringGreen3'],
    \ ['darkmagenta', 'MediumOrchid3'],
    \ ['brown',       'DarkOrange'],
    \ ['gray',        'SlateBlue2'],
    \ ['black',       'SpringGreen3'],
    \ ['darkmagenta', 'MediumOrchid3'],
    \ ['Darkblue',    'DarkOrange'],
    \ ['darkgreen',   'SlateBlue2'],
    \ ['darkcyan',    'SpringGreen3'],
    \ ['darkred',     'MediumOrchid3'],
    \ ['red',         'DarkOrange'],
    \ ]
" let g:rbpt_max = 16
" let g:rbpt_loadcmd_toggle = 0

