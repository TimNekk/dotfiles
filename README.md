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
sudo apt update
rm ~/.zshrc
```

## dotfiles

```bash
sudo apt update
sudo apt install stow
git clone git@github.com:TimNekk/dotfiles.git ~/dotfiles
stow ~/dotfiles
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
omz reload
```
