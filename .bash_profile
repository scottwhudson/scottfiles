# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH";
export PATH="$HOME/.rbenv/bin:$PATH";
eval "$(rbenv init -)"

for file in ~/.{bash_prompt,exports,aliases}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# source git-completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi
