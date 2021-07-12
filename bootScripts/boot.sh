play ~/boot/audio/oi.mp3

bootLoader() {

# bootLoader Function

echo "Choose A Terminal Setup"

echo "Type 1 For zsh"

echo "Type 2 for fish"

echo "type 0 for default"

echo "Type 3 for system settings"

echo "Type 9 To Exit"

read -p "Choose The Shell: " input

if [ "$input" = "1" ]; then

bash ~/boot/bootScripts/zsh.sh

elif [ "$input" = "2" ]; then

bash ~/boot/bootScripts/fish.sh

elif [ "$input" = "0" ]; then

bash ~/boot/bootScripts/normal.sh

elif [ "$input" = "3" ]; then 

bash ~/boot/bootScripts/settings.sh

elif [ "$input" = "9" ]; then

bash ~/boot/bootScripts/end.sh

else

echo "Invalid Option"

echo "Press Any Key To Continue.."

read -n 1

clear

bootLoader

fi

}

# Load Out BootLoader function

bootLoader
