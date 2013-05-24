# .bash_profile

# Get the aliases and functions
#if [ -f ~/.bashrc ]; then
#	. ~/.bashrc
#fi


# Load ~/.extra, ~/.bash_prompt, ~/.exports, ~/.aliases and ~/.functions
# ~/.extra can be used for settings you don.t want to commit
echo 'Sourced the following files: '
for file in ~/.{exports,functions,aliases,bash_prompt}; do
	[ -r "$file" ] && source "$file"
	echo $file
done
unset file
