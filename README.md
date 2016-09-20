# Scottfiles
##### aka Scott's Dotfiles

A modified version of [mathiasbynens dotfiles](https://github.com/mathiasbynens/dotfiles)

## Installation

**Warning:** If you want to give these dotfiles a try, you should first fork this repository, review the code, and remove things you don’t want or need. Don’t blindly use my settings unless you know what that entails. Use at your own risk!

I always begin with a clean OSX install and run the setup as follows:

1. Create a Development directory and `cd` into it:
```bash
mkdir ~/Development && cd ~/Development
```

2. Clone the repo and run the bootstrap script, which will update to the latest version of the repo and copy the files to the home directory:
```bash
git clone https://github.com/scottwhudson/scottfiles.git && cd scottfiles && source bootstrap.sh
```

3. [Install homebrew](http://brew.sh/)

4. Run the brew script, which will batch install our apps:
```bash
./brew.sh
```

5. Run the OSX script, which overrides some system UI/UX defaults:
```bash
./.osx
```

### Using Git and the bootstrap script

You can clone the repository wherever you want. (I like to keep it in `~/Projects/dotfiles`, with `~/dotfiles` as a symlink.) The bootstrapper script will pull in the latest version and copy the files to your home folder.

```bash
git clone https://github.com/mathiasbynens/dotfiles.git && cd dotfiles && source bootstrap.sh
```

To update the dotfiles without resintalling the OS, `cd` into `scottfiles` and then run:

```bash
source bootstrap.sh
```


### Specify the `$PATH`

If `~/.path` exists, it will be sourced along with the other files, before any feature testing (such as [detecting which version of `ls` is being used](https://github.com/mathiasbynens/dotfiles/blob/aff769fd75225d8f2e481185a71d5e05b76002dc/.aliases#L21-26)) takes place.

Here’s an example `~/.path` file that adds `/usr/local/bin` to the `$PATH`:

```bash
export PATH="/usr/local/bin:$PATH"
```
