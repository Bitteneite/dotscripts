#!/bin/sh

# Install oh-my-zsh ----------------
get_list(){
	ls ~/dotfiles/install-scripts > "temp.txt"
}

choose_packages() {
	cat temp.txt | gum choose --no-limit --header="Select Packages to install..." > temp.txt
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
        if [ -x "$file" ]; then
            echo "$file"
            #./"$file"
        else
            echo "Skipping $file as it is not executable."
        fi
    done < "$file_list"
}