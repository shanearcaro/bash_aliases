# Custom Alias definitions file

# Edit and update alias definitions

alias edit_alias="vi ~/.bash_aliases"
alias update_alias="source ~/.bash_aliases ; echo 'Aliases updated.'"

# Open current directory in GUI

alias open="xdg-open ."

# Empty Trash
alias empty_trash="rm -rf /home/shane/.local/share/Trash/files/*; echo 'Trash emptied.'"

# Set up or shutdown docker
alias docker_down="sudo /sbin/ifconfig docker0 down ; echo 'Docker shutdown'"
alias docker_up="sudo /sbin/ifconfig docker0 up ; echo 'Docker started'"

# Connect to VPN using Cisco Anyconnect
alias vpn_connect="/opt/cisco/anyconnect/bin/vpnui"

# NJIT AFS Commands
alias afs_login="kinit sma237 && aklog"
alias afs="cd /afs/cad/u/s/m/sma237/"

# Kill discord
alias discord_down="killall Discord ; echo 'Discord shutdown'"

ape() {
	for person in "$@"
	do
		/home/shane/Documents/Development/C++/ape $@
	done
}

# Make a directory and cd into it
mkdircd () {
	for location in "$@"
	do
		mkdir $@
		cd $@
	done
}

cv () {
	currentDate="$(date +%B) $(date +%d), $(date +%Y)"
	file="/home/shane/Documents/cv-template.pdf"
	jobTitle=$1
	companyName=$2
	hiringManager=${3:-Hiring Team}
	newFile="/home/shane/Documents/$companyName-CoverLetter.pdf"
	
	echo $file
	echo $jobTitle
	echo $companyName
	echo $hiringManager
	echo $newFile

	#sed "s/$date/$currentDate/" $file > newFile
	#sed "s/$job/$jobTitle/" $file > newFile
	#sed "s/$company/$companyName/" $file > newFile
	#sed "s/$hire/$hiringManager/" $file > newFile

	#echo "$newFile has been created."
}

# Print all commands

what () {
	echo "These commands are subject to modification / deletion."
	echo ""
	echo "open           - Opens the current directory in files window"
	echo "mkdircd (args) - Make a directory and cd into it"
	echo "empty_trash    - Empty local trash files"
	echo "docker_down    - Shuts down docker0 process"
	echo "docker_up      - Starts docker0 process"
	echo "discord_down   - Kill discord"
	echo "dev (args)     - cd into dev/args directory"
	echo "devc (args)    - cd into dev/args directory and open vscode"
	echo "school (args)  - cd into school/args directory"
	echo "edit_alias     - vi into bash_alias file"
	echo "update_alias   - Update bash_alias file with new commands"
	echo "vpn_connect    - Connect to cisco anyconnect vpn"
	echo "afs_login      - Generate token to log into afs"
	echo "afs            - cd into afs directory"
	echo "what           - Print all custom alias commands"

	echo ""
	echo "CV Template:"
	echo "cv (jobTitle, comapnyName, hiringManager)"
	echo "Generates a new cover letter based on the passed arguments"
}

# Search Directory commands


dev () {
	cd "/home/shane/Documents/Development"

	for location in "$@"
	do
		cd "$location"
	done

	ls
}

devc () {
	cd "/home/shane/Documents/Development"
	
	for location in "$@"
	do
		cd "$location"
	done

	code .
}

school () {
	cd "/home/shane/Documents/School"

	for location in "$@"
	do
		cd "$location"
	done

	ls
}

