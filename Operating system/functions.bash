#!/bin/bash
#Simulating the tas k
simulate_progression_bar()
sleep 1 #Pausing execution to simulate progress
#Animating progression bar
echo "5echo "5"" simulate_progression_basimulate_progression_barr echo "20echo "20"" simulate_progression_basimulate_progression_barr echo "45echo "45"" simulate_progression_basimulate_progression_barr echo "65echo "65"" simulate_progression_basimulate_progression_barr echo "80echo "80"" simulate_progrssion_basimulate_progrssion_barr echo "100echo "100"" simulate_progression_basimulate_progression_barr ) ) || diadialog log ----title "Progression Bar" title "Progression Bar" ----gauge "Please wait, loading..." gauge "Please wait, loading..." 10 45 10 45 00 #Displaying completion messag#Displaying completion messagee dialog dialog ----msgbox "Loading completed!" 13 2msgbox "Loading completed!" 13 255
#
#Displaying time and date in accordance to the current system Displaying time and date in accordance to the current system
function date_time()
function date_time()
{
{
dialog dialog ----backtitle "SYSTEM FUNCTIONS" backtitle "SYSTEM FUNCTIONS" ----title "DATE AND TIME" title "DATE AND TIME" \\
--
--msgbox "msgbox "\\n The day today: $(date +"%dn The day today: $(date +"%d--%m%m--%Y") %Y") \\nn\\n n \\
The time today: $(date +"%r %Z")" 12 70
The time today: $(date +"%r %Z")" 12 70
}
}
function calendar () {
function calendar () {
#Ensuring loop will continue to run indefinitely #Ensuring loop will continue to run indefinitely
whwhile true ile true
do do
#Displaying calendar dialog and storing date in CHOICE variable #Displaying calendar dialog and storing date in CHOICE variable
CHOICE=$(dialog CHOICE=$(dialog ----extraextra--button button ----extraextra--label "View Memo" label "View Memo" ----stdout stdout ----datedate--format "%d %m %Y" format "%d %m %Y" ----title "CALENDAR" title "CALENDAR" ----calendar calendar \\
"Choose a date to add mem"Choose a date to add memo:" 0 0) o:" 0 0)
case $? in case $? in
0) dialog 0) dialog ----title "$CHOICE" title "$CHOICE" ----inputbox "Input your memo:" 0 inputbox "Input your memo:" 0 0 2> memo.0 2> memo.txt txt ““$CHOICE$CHOICE--““
;; ;;
1) break 1) break
;; ;;
3) dialog 3) dialog ----textbox memo.txt 0 0 textbox memo.txt 0 0
esac esac
#0)Display#0)Displaying input box for the user to enter a memo ing input box for the user to enter a memo
#3)Enabling user to read from text document #3)Enabling user to read from text document
#Checking exit status and adding new line to the memos#Checking exit status and adding new line to the memos
if [ $? = 0 ]; if [ $? = 0 ];
then then
echo echo --e "e "\\n" >> mn" >> memo.txt emo.txt
fi fi
done done
clear clear
}
}
function delete ()
function delete ()
{
{
echo "Delete a file" echo "Delete a file"
whiptail whiptail ----title "Delete the file" title "Delete the file" ----msgbox "You've selected the msgbox "You've selected the option to remove a file." 9 50 option to remove a file." 9 50
filepath=$(zenity filepath=$(zenity ----filefile--selection) selection)
whiptwhiptail ail ----tittitle "Delete a file" le "Delete a file" ----msgbox "You've selected to msgbox "You've selected to remove $filepath" 9 50 remove $filepath" 9 50
dialog dialog ----title "Deletitle "Delete file" te file" \\
----yesno "Are you certain you want to irreversibly delete yesno "Are you certain you want to irreversibly delete $filepath?" 8 50 $filepath?" 8 50
if [[ $? == 0 if [[ $? == 0 ]]; then ]]; then
rm $filepath rm $filepath
whiwhiptail ptail ----ttitle "Delete the file" itle "Delete the file" ----msgbox "Deletion msgbox "Deletion successful!" 10 60 successful!" 10 60
else else
whiptail whiptail ----title "Delete the file" title "Delete the file" ----msgbox "Deletion msgbox "Deletion unsuccessful!" 10 60 unsuccessful!" 10 60
fi fi
clear clear
}
}
while true
while true
do
do
dialog
dialog ----clear clear ----title "Main Menu" title "Main Menu" \\
----menmenu "To move through the numbers, press the arrow keys.u "To move through the numbers, press the arrow keys.\\nn\\
Press Enter To Se
Press Enter To Selectlect\\nn\\
Select the activity of your choice:" 20 51 4 Select the activity of your choice:" 20 51 4 \\
"Date/time" "Date/time" "Date And Time" "Date And Time" \\
"Calendar" "Calendar" "View Calendar""View Calendar"\\
"Delete" "Delete" "Delete Chosen File""Delete Chosen File"\\
"Exit" "Exit" "Exit This Program" 2> "Exit This Program" 2> selectionselection.temp.$$ .temp.$$
retopt=$?
retopt=$?
choice=$(cat
choice=$(cat selectionselection.temp.$$) #Creation of files and redirecting .temp.$$) #Creation of files and redirecting their outputs their outputs
rm
rm --f f selectionselection.temp.$$ .temp.$$
case $retopt in
case $retopt in
0) 0)
case $choiccase $choice in e in
Date/time) date_time ;; Date/time) date_time ;;
Calendar) calendar ;; Calendar) calendar ;;
Delete) delete ;; Delete) delete ;;
Exit)Exit) notifynotify--send "final1.sh" "Exitting program, see you next time send "final1.sh" "Exitting program, see you next time ::--))""
exit 0;; exit 0;;
esac esac
;; ;;
1) exit ;; 1) exit ;;
255) exit ;; 255) exit ;;
esac
esac
done
done
clear
clear
Code