#!/bin/bash

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "============================================="
echo " Directory Audit Report"
echo " Generated: $(date '+%d %B %Y %H:%M:%S')"
echo "============================================="


for DIR in "${DIRS[@]}"; do

   
    if [ -d "$DIR" ]; then

       
        PERMS=$(ls -ld "$DIR" | awk '{print $1}')
        OWNER=$(ls -ld "$DIR" | awk '{print $3}')
        GROUP=$(ls -ld "$DIR" | awk '{print $4}')

       
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)

        echo "Directory  : $DIR"
        echo "Permission : $PERMS"
        echo "Owner      : $OWNER"
        echo "Group      : $GROUP"
        echo "Size       : $SIZE"
        echo "---------------------------------------------"
    else
        
        echo "$DIR does not exist on this system."
        echo "---------------------------------------------"
    fi
done


echo ""
echo "MySQL Specific Directory Check:"
echo "============================================="


MYSQL_DIRS=("/etc/mysql" "/var/log/mysql" "/var/lib/mysql")

for MDIR in "${MYSQL_DIRS[@]}"; do
    if [ -d "$MDIR" ]; then
    
        MPERMS=$(ls -ld "$MDIR" | awk '{print $1}')
        MOWNER=$(ls -ld "$MDIR" | awk '{print $3}')
        MSIZE=$(du -sh "$MDIR" 2>/dev/null | cut -f1)

        echo "Found      : $MDIR"
        echo "Permission : $MPERMS"
        echo "Owner      : $MOWNER"
        echo "Size       : $MSIZE"
        echo "---------------------------------------------"
    else
        echo "Not found  : $MDIR (MySQL may not be installed)"
        echo "---------------------------------------------"
    fi
done

echo "Audit complete."
echo "============================================="
