## DOTFILE REPOSITORY

The dotfiles are maintained using gnu/stow

If you wanna use my dot files:

    git clone https://github.com/lightdarkx/.dotfiles.git
    cd .dotfiles
    stow --adopt -vSt ~ *

### REQUIREMENTS:
- gnu/stow
- neovim
  - vim-plugged (plugin manager)
- zsh
  - zplug (plugin manager)
- polybar