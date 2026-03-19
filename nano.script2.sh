#!/bin/bash


PACKAGE="mysql-server"            

echo "============================================="
echo " FOSS Package Inspector"
echo " Checking package: $PACKAGE"
echo "============================================="


if dpkg -l | grep -iq "$PACKAGE"; then
    echo "STATUS  : $PACKAGE is INSTALLED on this system."
    echo "---------------------------------------------"
    echo "Package Details:"

   
    dpkg -l | grep -i "$PACKAGE" | awk '{print "Version : " $3}'
    echo "---------------------------------------------"


    echo "Binary Location:"
    which mysql

   
    echo "---------------------------------------------"
    echo "License : GPL v2 / Commercial (Dual License)"
else
    
    echo "STATUS  : $PACKAGE is NOT installed."
    echo "To install run: sudo apt install mysql-server"
fi

echo "============================================="


echo "Open Source Philosophy Note:"
echo "---------------------------------------------"

case $PACKAGE in
    mysql-server|mysql)
        echo "MySQL: Dual-licensed under GPL v2 and commercial."
        echo "The database that powered a generation of the web."
        echo "Born free, acquired by Oracle, forked into MariaDB."
        ;;
    apache2|httpd)
        echo "Apache: The open web server that built the internet."
        echo "Powers roughly 30 percent of all websites globally."
        ;;
    vlc)
        echo "VLC: Built by students in Paris who just wanted"
        echo "to stream video. Now plays literally everything."
        ;;
    firefox)
        echo "Firefox: A nonprofit fighting to keep the web open"
        echo "against browser monopolies."
        ;;
    git)
        echo "Git: Linus built this when proprietary tools failed him."
        echo "Now the entire software world depends on it."
        ;;
    python3)
        echo "Python: Shaped entirely by community consensus."
        echo "The language that made programming accessible."
        ;;
    *)
        echo "An open source tool worth understanding deeply."
        ;;
esac

echo "============================================="
