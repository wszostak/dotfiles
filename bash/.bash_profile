if [ -f .bashrc ]; then
    source .bashrc
fi

for file in ~/.bash/*; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

export PATH="/usr/local/opt/mysql@5.6/bin:$PATH"
