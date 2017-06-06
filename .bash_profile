# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH";
export PATH="$HOME/.rbenv/bin:$PATH";
eval "$(rbenv init -)"

for file in ~/.{bash_prompt,exports,aliases}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

