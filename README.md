# Scott's Dotfiles

A modified version of [mathiasbynens dotfiles](https://github.com/mathiasbynens/dotfiles)

## Installation

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

6. Install vim plugins
```bash
ruby vim/install.rb
```

### Specify the `$PATH`

If `~/.path` exists, it will be sourced along with the other files, before any feature testing (such as [detecting which version of `ls` is being used](https://github.com/mathiasbynens/dotfiles/blob/aff769fd75225d8f2e481185a71d5e05b76002dc/.aliases#L21-26)) takes place.

Here’s an example `~/.path` file that adds `/usr/local/bin` to the `$PATH`:

```bash
export PATH="/usr/local/bin:$PATH"
```
