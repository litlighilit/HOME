#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
export HISTCONTROL=ignoredups

so_if_e() {
	[ -f $1 ] && . $1
}
so_if_e ~/.bash_aliases

so_if_e ~/.bash.tmux-bash-completion
[ -d ~/src/Nim/ ] && {
for i in nim nimgrep nimpretty; do
  source ~/src/Nim/tools/$i.bash-completion
done
}
command -v iamb >/dev/null 2>&1 && source <(iamb --completions bash)

