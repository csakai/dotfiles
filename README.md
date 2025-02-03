# Setup

```bash
curl -K https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/git-completion.bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
curl -K https://raw.githubusercontent.com/github/hub/master/etc/hub.bash_completion.sh -o ~/hub.bash_completion.bash

brew install zsh-autosuggestions
brew install zsh-syntax-highlighting

brew install starship
echo 'eval "$(starship init zsh)"' >> ~/.zshrc

brew install --cask font-hack-nerd-font
```

# Oh My Zsh!
* Specific issue with OSX: https://github.com/ohmyzsh/ohmyzsh/issues/6835#issuecomment-390216875

# Oh My Git!
Opinionated Git Prompt
Found here: https://github.com/arialdomartini/oh-my-git

# OSX setup things
```bash
# Install xcode Command Line Tools
xcode-select --install
# Modify save location for Grab.app
defaults write com.apple.screencapture ~/screencaps
# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install --cask slack
brew install --cask google-chrome
# windowing manager
brew install --cask rectangle
```

## VS Code
In order to disable the default behavior of MacOS where if you hold a key, it gives you the option to accent characters, we can override defaults for VS Code only. This is especially useful for vim navigation in VS Code. See this [stack overflow thread](https://stackoverflow.com/questions/39972335/how-do-i-press-and-hold-a-key-and-have-it-repeat-in-vscode).

> To disable the Apple press and hold for VSCode only, run this command in a terminal:

```sh
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false
```
> Then restart VSCode.

> To re-enable, run this command in a terminal:

```sh
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool true
```

# Alacritty
Terminal Emulator (TODO)
```bash
brew install --cask alacritty
```

# Terminal font for Powerline
**Temporarily not using in favor of Hack Nerd Font as I was having trouble getting this to work**
https://github.com/powerline/fonts/blob/master/DroidSansMono/Droid%20Sans%20Mono%20for%20Powerline.otf

```bash
# only need to do this once for any cask font
brew tap homebrew/cask-fonts
brew install --cask font-droid-sans-mono-nerd-font
```

# Tmux
Found here: https://tmux.github.io/

**Temporarily not using tmux as my config is very out of date and kind of broken**

## Config
I put comment banners to separate specific configuration pieces into sections. It makes it easier to find what's where.

# Tmuxinator
Save configurations for tmux!
Found here: https://github.com/tmuxinator/tmuxinator

# TPM
Tmux Package Manger!
Found here: https://github.com/tmux-plugins/tpm

# RVM
Ruby Version Manager
Found here: https://rvm.io/

# gitconfig
## Colordiff
Available on brew
