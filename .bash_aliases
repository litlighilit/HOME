
[ -f ~/.bash_variables ] && . ~/.bash_variables

export PATH=$HOME/.local/bin:$HOME/tools/bin:\
$HOME/.npm/bin:$HOME/.nimble/bin:$HOME/.cargo/bin:"$PATH"

export RUSTPYTHONPATH=$HOME/src/RustPython/Lib
export PYTHONPATH=/mnt/File/pyprog/

alias vi=vim
export VISUAL=vim
export EDITOR=vim

export code_="/mnt/File/test_code/"

alias mnim="nim secret --import:macros --hints:off"
alias ngdb="gdb -iex ~/tools/nim.gdb -iex ~/src/Nim/tools/debug/nim-gdb.py"
alias ndb="ngdb --args nim_dbg"

xha_auto(){
	nmcli c u OUC-WIFI
	python -m auto_xha
}

venv(){
	if [ -z "$1" -o "$1" = "-l" ]; then
		ls ~/venvs
		return
	fi
	. ~/venvs/"$1"/bin/activate
}

