# .bash_profile

# Get the aliases and functions
#if [ -f ~/.bashrc ]; then
#	. ~/.bashrc
#fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin

export PATH

# Load ~/.extra, ~/.bash_prompt, ~/.exports, ~/.aliases and ~/.functions
# ~/.extra can be used for settings you don.t want to commit
echo 'Sourced the following files: '
for file in ~/.{functions,aliases,bash_prompt}; do
	[ -r "$file" ] && source "$file"
	echo $file
done
unset file
