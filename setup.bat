@echo off
rem %USERPROFILE% 配下にdotfiles(https://github.com/tatsumitori/dotfiles)がcloneされていること
set FN=%USERPROFILE%\dotfiles

:LOOP

echo ******************** 処理選択 ********************
echo  [1] VIM/GVIM設定
echo  [2] NEOVIM設定
echo  [3] クリップボート
echo  [0] 終了
echo **************************************************

set /p NUM="処理を行う番号を入力して下さい >"
if "%NUM%"=="1" goto VIM
if "%NUM%"=="2" goto NEOVIM
if "%NUM%"=="3" goto ClipBoard
if "%NUM%"=="0" goto END
goto LOOP

:VIM
mkdir %USERPROFILE%\_vimbk\backup
mkdir %USERPROFILE%\_vimbk\temp
mkdir %USERPROFILE%\_vimbk\undo
mklink /D %USERPROFILE%\vimfiles %USERPROFILE%\dotfiles\.vim
echo VIM/GVIM設定が完了しました
goto LOOP

:NEOVIM
mklink /D %USERPROFILE%\AppData\Local\nvim %USERPROFILE%\dotfiles\nvim
echo NEOVIM設定が完了しました
goto LOOP

:ClipBoard
:LOOP2

echo **************** セットする文字列 ****************
echo [1] k_2ndhorizon_1988765@hotmail.co.jp
echo [2] ZgoP8#pT
echo [0] 処理選択に戻る
echo **************************************************

set /p NUM="処理を行う番号を入力してください >"
if "%NUM%"=="1" call %FN%\clipboard\my_hotmailaddress.bat
if "%NUM%"=="2" call %FN%\clipboard\teikeiloan_pass.bat
if "%NUM%"=="0" goto LOOP
goto LOOP2

:END
