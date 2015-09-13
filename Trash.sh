
echo "Ensure you use the 'sudo' call before ./Trash.sh" 
echo -n "Enter the name of the File you would like to move to trash: "
read lFile

if [ -e "$lFile" ]
then
	if [ -d "/home/Trash" ]
	then
		mv $lFile "/home/Trash"
	else
		mkdir "/home/Trash"
		mv $lFile "/home/Trash"
	fi
else
	echo "The file you are trying to move does not exist!"
fi
