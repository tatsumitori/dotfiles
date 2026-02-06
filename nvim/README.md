# Neovim 用設定

## Requirements

- **neovim** >= 0.11.0
- **git**
- [**tree-sitter-cli**](https://tree-sitter.github.io/tree-sitter/creating-parsers/1-getting-started.html#installation) for [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- a C compiler for [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- (optional) a [Nerd Font](https://www.nerdfonts.com/)
- (optional) **[ripgrep](https://github.com/BurntSushi/ripgrep)** for [`Snacks.picker.grep`](https://github.com/folke/snacks.nvim/blob/main/docs/picker.md#grep)
- (optional) **[fd](https://github.com/sharkdp/fd)** for [`Snacks.picker.explorer`](https://github.com/folke/snacks.nvim/blob/main/docs/picker.md#explorer)

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

◆lazygitのインストール（推奨）

```powershell
PS> winget install JesseDuffield.lazygit
```

◆Neovimのインストール方法

```powershell
PS> winget install Neovim.Neovim
```

