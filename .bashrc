boot() {

clear

read -p "Do You Want To Perform Secure Boot?[Y/n]" confirm

input=${confirm,,}

if [ "$input" = "y" ]; then

bash ~/boot/bootScripts/start.sh

elif [ "$input" = "n" ]; then

bash ~/boot/bootScripts/secureBoot.sh

else

echo "Invalid Option"

echo ""

echo "Press Any Key To Continue.."

read -n 1

clear

boot

fi

}

boot
