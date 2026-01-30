# Neovim 用設定

## macOS/Linux の場合

`~/.config/nvim` がこの `nvim` ディレクトリの内容を参照するようにシンボリックリンクを作成します。

```console
$ cd {このディレクトリ}
$ ln -s $PWD ~/.config/nvim
```

## Windows の場合

`%USERPROFILE%/AppData/Local/nvim` がこの `nvim` ディレクトリの内容を参照するようにシンボリックリンクを作成します。

```powershell
PS> cd {このディレクトリ}
PS> New-Item -ItemType SymbolicLink -Path $env:USERPROFILE/AppData/Local/nvim -Target $PWD
```

◆windowsのneovimのTelescopeのインストール準備
ripgrep と fd のインストール

```powershell
PS> winget install BurntSushi.ripgrep.GNU
PS> winget install sharkdp.fd
```

◆Neovimのインストール方法

```powershell
PS> winget install Neovim.Neovim
```

