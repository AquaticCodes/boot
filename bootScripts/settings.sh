# System Settings Feature

systemSettings() {

viu --once ~/boot/images/animatedBoot/success.gif

echo "BOOTED INTO SYSTEM SETTINGS AND MENU SUCCESSFULLY"

date

echo ""

echo "Welcome, To Begin, Choose a option below"

echo "Type 1 To Shutdown!"

echo "Type 2 To Sleep"

echo "Type 3 To Change BootScripts"

echo "Type 0 To Go Back"

read -p "Input: " setting

if [ "$setting" = "1" ]; then

echo "-_-"

elif [ "$setting" = "2" ]; then 

read -p "Please Enter The Time In Seconds To Sleep: " timetosleep

sleep timetosleep

elif [ "$setting" = "3"  ]; then

cd ~/boot/ && ls

elif [ "$setting" == "0" ]; then 

bash ~/boot/bootScripts/boot.sh

else 

echo "Invalid Option"

echo "Press Any Key To Continue.."

read -n 1

clear

systemSettings

fi 

}

systemSettings
