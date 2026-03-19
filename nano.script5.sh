#!/bin/bash


echo "============================================="
echo " Open Source Manifesto Generator"
echo " Inspired by the MySQL story"
echo "============================================="
echo ""
echo "Answer three questions to generate your manifesto."
echo ""


read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD


DATE=$(date '+%d %B %Y')
AUTHOR=$(whoami)


OUTPUT="manifesto_${AUTHOR}.txt"

echo ""
echo "Generating your manifesto..."
echo "---------------------------------------------"

echo "=============================================" > "$OUTPUT"
echo " My Open Source Manifesto" >> "$OUTPUT"
echo " Author : $AUTHOR" >> "$OUTPUT"
echo " Date   : $DATE" >> "$OUTPUT"
echo "=============================================" >> "$OUTPUT"
echo "" >> "$OUTPUT"


echo "Every day I rely on $TOOL — a tool I did not pay for," >> "$OUTPUT"
echo "built by people I have never met, who believed that" >> "$OUTPUT"
echo "$FREEDOM is more valuable than profit." >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "MySQL taught me that open source is not just a license." >> "$OUTPUT"
echo "It is a choice about who gets to participate in" >> "$OUTPUT"
echo "technology. When Oracle acquired MySQL, the original" >> "$OUTPUT"
echo "creators walked away and built MariaDB rather than" >> "$OUTPUT"
echo "compromise that choice. That is what commitment to" >> "$OUTPUT"
echo "open source actually looks like in practice." >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "Someday I will build $BUILD and share it freely," >> "$OUTPUT"
echo "so someone I will never meet can build something" >> "$OUTPUT"
echo "I could never imagine. That is the promise of" >> "$OUTPUT"
echo "open source software." >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "— $AUTHOR" >> "$OUTPUT"
echo "=============================================" >> "$OUTPUT"


echo "Manifesto saved to $OUTPUT"
echo "---------------------------------------------"
cat "$OUTPUT"
echo "============================================="
