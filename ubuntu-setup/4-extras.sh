#!/bin/sh

# Install oh-my-zsh ----------------
get_list(){
	ls ~/dotscripts/install-scripts > "temp.txt"
}

choose_packages() {
	cat temp.txt | gum choose --no-limit --header="Run extra scripts..." > temp_install.txt
}


execute_scripts() {
	#Parameter
	local file_list="$1"
	
	# Check if the file exists
	if [ ! -f "$file_list" ]; then
		echo "Error: $file_list not found."
		return 1
	fi

	# Read the file line by line and execute each file
	while IFS= read -r file; do
		tmp_file="$HOME/dotscripts/install-scripts/$file"
		if [ -x "$tmp_file" ]; then
			sh "$tmp_file"
		else
			echo "Skipping $file as it is not executable."
		fi
	done < "$file_list"
}

get_list
choose_packages
execute_scripts "temp_install.txt"
