BASH_SECRET_FILE='.bash_secret'
[ -r "$BASH_SECRET_FILE" ] && [ -f "$BASH_SECRET_FILE" ] && source "$BASH_SECRET_FILE";

export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
export DYLD_LIBRARY_PATH=$ORACLE_HOME

export OCI_HOME=$ORACLE_HOME
export OCI_LIB_DIR=$ORACLE_HOME
export OCI_INCLUDE_DIR=$ORACLE_HOME/sdk/include
export OCI_VERSION=11
export NLS_LANG=.UTF8

export NODE_PATH=/usr/local/lib/node_modules/

export PATH="$(brew --prefix php54)/bin:$PATH"
export PATH=${HOME}/bin:/usr/local/bin:$PATH
export PATH=$PATH:$ORACLE_HOME
if [ -f .bashrc ]; then
    source .bashrc
fi

for file in ~/.bash/*; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;