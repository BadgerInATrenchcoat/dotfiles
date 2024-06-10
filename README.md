# Sway Dotfiles

These are the dotfiles for my Sway + Arch Linux system. The system primarily carries a nord/nord-adjacent theme, with a slightly more lenient approach taken for select elements like Waybar. 

## Dependencies

Intent on keeping a minimal installation, third party dependencies have been kept to a minimum. This means that most relevant dependencies should be installed with the configured packages themselves. I have included a one-line command to add all dotfiles from this repo to your system. Eventually I intend to have it handle dependency resolution / package installation as well.  
The only notable package deviation is ranger, which--as of now, at least--must be ranger-git from the AUR instead of the standard ranger package from the Arch repositories.  This is due to the implimentation of sixel, the only image preview method that seems to work on Wayland + Foot.

## One-Line Installation
The following command will clone this repository and use stow to link all included files to their intended destinations. While I intend to eventually adapt this command to handle dependencies, it will not currently.    
```
cd $HOME && git clone https://github.com/pika-colony/dotfiles && stow . 
```

## Credits
Kickstart.nvim: https://github.com/nvim-lua/kickstart.nvim
Nord Nvim Theme: https://github.com/shaunsingh/nord.nvim
