#!/bin/bash
#Displaying Zenity Interface form
function signup_form()
{
z enity forms
text "Welcome to signup page"
add entry "Enter your first name"
add entry "Enter your surname"
add entry "Enter username"
a dd password "Enter your password"
}
#Displaying system information
function OS_info_display()
{
dialog backtitle "OPERATING SYSTEM"
title "My System Information"
msgbox "$(uname a)" 15 40
}
#Displaying hard disk informat
ion
function harddisk_info_display()
{
dialog backtitle "Hard Disk Info"
title "My Hard Disk Information"
msgbox "$(sudo lshw c disk)" 20 70
}
#Displaying memory information
function memory_info_display()
{
{
dialog dialog ----backtitle "Memory backtitle "Memory Info" Info" \\
----title "My memtitle "My memory Information" ory Information" \\
----msgbox "$(sudo lshw msgbox "$(sudo lshw --short short --c memory)" 20 70 c memory)" 20 70
}
}
#Displaying CPU Information
#Displaying CPU Information
function CPU_info_display()
function CPU_info_display()
{
{
dialog dialog ----backtitle "CPU" backtitle "CPU" \\
----title "My CPU Informationtitle "My CPU Information" " \\
----msgbox "$(lscpu)" 40 200 msgbox "$(lscpu)" 40 200
}
}
#Displaying File
#Displaying File System Information System Information
function filesystem_info_display()
function filesystem_info_display()
{
{
dialog dialog ----backtitle "File System Information" backtitle "File System Information" \\
----title "My File System Info" title "My File System Info" \\
----msgbox "$(df)" 15 60 #df shows all file system msgbox "$(df)" 15 60 #df shows all file system information information
}
}
#Calling the functions to display the information
#Calling the functions to display the information
signup_form;
signup_form;
OS_info_display;
OS_info_display;
harddisk_info_display;
harddisk_info_display;
memory_info_display;
memory_info_display;
CPU_info_display;
CPU_info_display;
filesystem_info_system;
filesystem_info_system;
clear
clear