#!/bin/bash


STUDENT_NAME="[Your Name]"       
SOFTWARE_CHOICE="MySQL"            


KERNEL=$(uname -r)                 
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
HOME_DIR=$HOME                   

DISTRO=$(cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2 | tr -d '"')

CURRENT_DATE=$(date '+%d %B %Y, %H:%M:%S')


echo "============================================="
echo "   Open Source Audit — $STUDENT_NAME"
echo "   Chosen Software : $SOFTWARE_CHOICE"
echo "============================================="
echo "Distribution : $DISTRO"
echo "Kernel       : $KERNEL"
echo "User         : $USER_NAME"
echo "Home Dir     : $HOME_DIR"
echo "Uptime       : $UPTIME"
echo "Date/Time    : $CURRENT_DATE"
echo "---------------------------------------------"
echo "Note: The Linux OS on this system is covered"
echo "under the GNU General Public License v2 (GPLv2)"
echo "============================================="
