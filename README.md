# TimNekk's dotfiles

## Auth to github

```bash
ssh-keygen -t ed25519 -C "herew26@gmail.com"
ssh-add ~/.ssh/id_ed25519
cat ~/.ssh/id_ed25519.pub
```

Enter SSH key in GitHub (Settings → SSH and GPG keys)

## oh-my-zsh

Install zsh

```bash
sudo apt install zsh
chsh -s $(which zsh)
exit
```

Install oh-my-zsh

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## dotfiles

```bash
sudo apt update
sudo apt install stow -y
git clone https://github.com/TimNekk/dotfiles.git ~/dotfiles
cd ~/dotfiles
stow --adopt .
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
omz reload
```

## just

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo >> ~/.zshrc
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> s~/.zshrc
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
brew install just
```

## goenv

```bash
git clone https://github.com/go-nv/goenv.git ~/.goenv
echo 'export GOENV_ROOT="$HOME/.goenv"' >> ~/.zshenv
echo 'export PATH="$GOENV_ROOT/bin:$PATH"' >> ~/.zshenv
echo 'eval "$(goenv init -)"' >> ~/.zshenv
echo 'export PATH="$GOROOT/bin:$PATH"' >> ~/.zshenv
echo 'export PATH="$PATH:$GOPATH/bin"' >> ~/.zshenv
omz reload
```
