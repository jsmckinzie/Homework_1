#Joel McKinzie: ME701 Fall 2015
#This program takes the name of a file in the current working directory
#It then moves the file to a folder named Trash in my home directory
#If the directory does not exist, the script creates it

echo "Ensure you use the 'sudo' call before ./Trash.sh" 
echo -n "Enter the name of the File you would like to move to trash: "
read lFile

if [ -e "$lFile" ]
then
	if [ -d "/home/jsmckinzie/Trash" ]
	then
		mv $lFile "/home/jsmckinzie/Trash"
	else 
		echo "Inside else"
		mkdir -p "/home/jsmckinzie/Trash"
		chmod o+w "/home/jsmckinzie/Trash"
		mv $lFile "/home/jsmckinzie/Trash"
	fi
else
	echo "The file you are trying to move does not exist!"
fi
