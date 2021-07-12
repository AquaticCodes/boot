bootIntoConfirmation() {

	read -p "Safe Boot?[Y/n]" bootType

	bootInto=${bootType,,}

	if [ "$bootInto" = "y" ]; then

	figlet AOS NON-SECURE  BOOT
	echo "By Aquatic"

	echo ""

	cd ~/aos

	HOME="~/aos"

	ls

	elif [ "$bootInto" = "n" ]; then

	clear

	figlet AOS TERMUX

	echo "By Aquatic"

	echo ""

	ls

	else

	echo "Invalid Option"

	echo ""

	echo "Press Any Key To Continue"

	read -n 1

	bootIntoConfirmation

	fi

}

bootIntoConfirmation
