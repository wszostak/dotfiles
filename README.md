# dotfiles

My configurations.

## Setup

### Clone

Clone this repository to `~/.dotfiles`

```bash
$ cd ~
$ git clone https://github.com/wszostak/dotfiles.git .dotfiles
$ cd .dotfiles
```

### Configure iTerm2

1. Go to the iTerm2 Preferences (`⌘,`)
2. In the General tab go to Preferences, check `Load preferences from a custom folder or URL`.
3. Select `~/.dotfiles/iterm2` folder.
4. Restart iTerm2.

### Install

**IMPORTANT:** This will *override* all existing files with a symlinks configured in `links`.

```bash
$ ./install
```
