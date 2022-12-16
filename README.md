# Neovim with lua
  
## Description  
I try to use two different configuration inspired by:
- cool [youtube](https://www.youtube.com/@joseanmartinez) blogger [@Josean Martinez](https://github.com/josean-dev)  
- creater of [Inkdrop](https://www.inkdrop.app/) and amazing [youtube](https://www.youtube.com/@devaslife) blogger [@Takuya Matsuyama](https://github.com/craftzdog)  
  
From youtube videos:  
- [How I Setup Neovim On My Mac To Make It Amazing - Complete Guide](https://www.youtube.com/watch?v=vdn_pKJUda8&t=1s) of Josean Martinez  
- [Set up Neovim on a new M2 MacBook Air for coding React, TypeScript, Tailwind CSS, etc.](https://www.youtube.com/watch?v=ajmK0ZNcM4Q&t=372s) of Takuya Matsuyama  

After used this two different configurations for Neovim - I created my own.  
I got a lot of experience of using lua for Neovim and I am very grateful to these persons: [@Josean Martinez](https://github.com/josean-dev) and [@Takuya Matsuyama](https://github.com/craftzdog)  
 
## Installation
  
***Global***  
```
which npm
cd {which npm}
npm install npm@latest
npm install -g typescript-language-server typescript
npm install -g @tailwindcss/language-server
npm install -g @fsouza/prettierd
npm install -g neovim
```

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
