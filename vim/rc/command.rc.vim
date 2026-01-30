" --- コマンド関連 ---
" Leiningen経由でClojureのREPLを、バッファのカレントディレクトリで起動する
command! Repl !start cmd.exe /c cd /d "%:h"&& lein.bat repl

