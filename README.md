# Neovim with lua
  
## Description  
I try to use two different configuration inspired by:
- cool [youtube](https://www.youtube.com/@joseanmartinez) blogger [@Josean Martinez](https://github.com/josean-dev)  
- creater of [Inkdrop](https://www.inkdrop.app/) and amazing [youtube](https://www.youtube.com/@devaslife) blogger [@Takuya Matsuyama](https://github.com/craftzdog)  
  
From youtube videos:  
- [How I Setup Neovim On My Mac To Make It Amazing - Complete Guide](https://www.youtube.com/watch?v=vdn_pKJUda8&t=1s) of Josean Martinez  
- [Set up Neovim on a new M2 MacBook Air for coding React, TypeScript, Tailwind CSS, etc.](https://www.youtube.com/watch?v=ajmK0ZNcM4Q&t=372s) of Takuya Matsuyama  
 
## Installation
  
***Windows:***  
```  
cd ~/AppData/local/
git clone https://github.com/lobanov4real/nvim
cd /nvim/
git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"
cd /lua/ivan/
nvim plugins.lua
:PackerInstall
:wqa
``` 
  
***Linux***  
```
cd ~/.config/
git clone https://github.com/lobanov4real/nvim
cd /nvim/
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
cd ~/.config/nvim/lua/ivan/
nvim plugins.lua
:PackerInstall
:wqa
```
  
### License: MIT 
