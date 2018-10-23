if [ -f .bashrc ]; then
    source .bashrc
fi

for file in ~/.bash/*; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;