# Dotfiles

## Installation
各環境に対応するインストールスクリプトを実行する。
```sh
# ubuntu
$ bash install_ubuntu.sh
```

## Windows
windows(WSL2)の場合はscoopのインストールを行い、次のパッケージをインストールする。
```
scoop bucket add extras
scoop install ueli
scoop install alacritty
```

`C:/Users/yuki/AppData/Roaming/alacritty/alacritty.yml`に`alacritty.yml`をコピーし、次の設定を追記する。
```yml
shell:
  program: /Windows/System32/wsl.exe ~ -d Ubuntu-20.04
```

