## gets the webpage (set chron job to download this every minute

## get rid of old tab
rm -rf auto_pull.html

firefox --new-tab "https://ps.itsli.albany.edu/psc/he90prod/EMPLOYEE/HRMS/c/SA_LEARNER_SERVICES.SSR_SSENRL_CART.GBL?&"

sleep 1

#xdotool type "9058"
xdotool type "3940" ## OPEN CLASS!!
sleep 1
xdotool key Tab
sleep 1
xdotool key Return
sleep 1
xdotool key ctrl+s
xdotool type "auto_pull"
## TODO: Add a timestamp & folder, and them smartly remove these automatically.
xdotool key Return 
sleep 1
## make sure the file saved in the correct (current) diretory

if [ -e "auto_pull.html" ]; then
	echo " file exists in current directory"
	file="auto_pull.html"
else
	echo "File does Not exist in current directory"
	## TODO: Add logic to search file directory for file
	## file="PATH_TO_FILE"
fi
#cat $file
g=`cat "$file" | grep -o 'PS_CS_STATUS_OPEN_ICN_1.gif'`

echo "$g"
echo "`echo "$g" | wc -c`"
if [ `echo "$g" | wc -c` -gt 1 ]; then
	echo "The Class is OPEN!!!!"
else
	echo "The class is CLOSED!"
fi

