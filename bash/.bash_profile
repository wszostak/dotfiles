if [ -f .bashrc ]; then
    source .bashrc
fi

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  source $(brew --prefix)/etc/bash_completion
fi

for file in ~/.bash/*; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;