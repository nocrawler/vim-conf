# .bashrc

# User specific aliases and functions

alias rm='rm -i'
export PS1="\[\e[1;32m\]\u\[\e[m\]\[\e[1;33m\]@\[\e[m\]\[\e[1;35m\]$(/sbin/ifconfig eth0 | awk ' /inet addr:/  { print $2 } ' | cut -c6-)\[\e[m\]:\w\$ "
