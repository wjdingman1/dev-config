# config-env
Local configuration for dev environment and dotfiles inspired by [kjivan](https://github.com/kjivan) and [here](https://www.atlassian.com/git/tutorials/dotfiles).

## How it works
This repo setups up a bare git repository and overlays it with your $HOME directory as the work tree, allowing you to save your dotfiles and other configuration.

.zshrc will have **config** aliased as a reference to the bare git repo.

## TLDR;

```bash
curl -s https://raw.githubusercontent.com/wjdingman1/dev-config/master/dev-config/install-brew-and-zsh | bash
curl -s https://raw.githubusercontent.com/wjdingman1/dev-config/master/dev-config/setup-dev-env | bash
~/dev-env/install-packages
```
