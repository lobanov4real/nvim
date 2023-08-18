# Setup and customize Neovim with lua

## Description

I try to use two different configuration inspired by:

- [youtube](https://www.youtube.com/@joseanmartinez) blogger [@Josean Martinez](https://github.com/josean-dev)
- creater of [Inkdrop](https://www.inkdrop.app/) and [youtube](https://www.youtube.com/@devaslife) blogger [@Takuya Matsuyama](https://github.com/craftzdog)

From youtube videos:

- [How I Setup Neovim On My Mac To Make It Amazing - Complete Guide](https://www.youtube.com/watch?v=vdn_pKJUda8&t=1s) of Josean Martinez
- [Set up Neovim on a new M2 MacBook Air for coding React, TypeScript, Tailwind CSS, etc.](https://www.youtube.com/watch?v=ajmK0ZNcM4Q&t=372s) of Takuya Matsuyama

After used this two different configurations for Neovim - I created my own. I got a lot of experience of using lua for Neovim and I am very grateful to these persons: [@Josean Martinez](https://github.com/josean-dev) and [@Takuya Matsuyama](https://github.com/craftzdog)

## Screnshot

![image](https://github.com/lobanov4real/nvim/assets/110660329/e65b7876-83b7-4f67-a102-3ee53f58e6c3)

## Requirements

- [Git](https://git-scm.com/downloads)
- [Neovim](https://neovim.io/)
- [GCC](https://gcc.gnu.org/)
- [G++](https://linux.die.net/man/1/g++)
- [Node.js](https://github.com/nodesource/distributions)

## Install requirements

### Ubuntu

Neovim through [appimage](https://github.com/neovim/neovim/wiki/Installing-Neovim#appimage-universal-linux-package).

```shell
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage
```

```shell
./nvim.appimage --appimage-extract
```

```shell
./squashfs-root/AppRun --version
```

```shell
sudo mv squashfs-root /
```

```shell
sudo ln -s /squashfs-root/AppRun /usr/bin/nvim
```

```shell
nvim
```

GCC and G++:

```shell
sudo apt-get install gcc g++ -y
```

Node.js v18.x:

```shell
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash - &&\
sudo apt-get install -y nodejs
```

## Installation

### Windows

```powershell
cd ~/AppData/local/
git clone https://github.com/lobanov4real/nvim
cd ./nvim/
git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"
cd ./lua/ivan/
nvim plugins.lua
:PackerInstall
:wqa
```

### Linux

```bash
cd ~/.config/
git clone https://github.com/lobanov4real/nvim
cd ./nvim/
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
cd ~/.config/nvim/lua/ivan/
nvim plugins.lua
:PackerInstall
:wqa
```

## License

MIT
