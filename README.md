Open Source Software Capstone Project

Student Name: Divyani Singh
Registration Number: 24MIP10185
Course: Open Source Software (NGMC)
Chosen Software: MySQL
Repository: oss-audit-[rollnumber]

About This Project

This repository contains five shell scripts developed as part of the Open Source Software capstone project.
The selected software for this audit is MySQL, one of the most widely used open-source relational database systems. It has a unique dual-licensing model and a history involving community contributions, forks, and corporate ownership.
These scripts demonstrate practical Linux shell scripting skills while connecting to broader open-source philosophy concepts explored in the written report.

Chosen Software — MySQL

MySQL is a relational database management system created by Michael Widenius and David Axmark in 1995.
Licensed under GPL v2 (community edition)
Commercial licensing available for enterprises
Core part of the LAMP stack (Linux, Apache, MySQL, PHP)
Used by platforms like WordPress, Wikipedia, and early Facebook

Script Descriptions
Script 1 — System Identity Report

Displays:
OS name
Kernel version
Current user
Home directory
Uptime
Date & time
Also includes a note about GPL v2 licensing.

Concepts used:
Variables, command substitution, echo, formatting

Script 2 — FOSS Package Inspector

Checks if MySQL is installed
Displays version and license
Uses case to print philosophy notes

Concepts used:
if-else, case, dpkg, grep, awk, pipes

Script 3 — Disk and Permission Auditor

Audits important system directories
Shows permissions, owner, group, disk usage
Includes MySQL-specific directories

Concepts used:
arrays, loops, conditionals, ls, du, awk

Script 4 — Log File Analyzer

Reads log file line-by-line
Counts keyword occurrences
Shows last 5 matching entries

Concepts used:
arguments, loops, counters, grep, tail

Script 5 — Open Source Manifesto Generator

Takes user input
Generates personalized manifesto
Saves output to a file

Concepts used:
read, string handling, file writing (>, >>), cat

 Dependencies

Linux (Ubuntu recommended)

Bash shell
dpkg (for Script 2)
MySQL (recommended)

Install MySQL:
sudo apt update
sudo apt install mysql-server -y

Setup (Windows Users)

In PowerShell (Admin):
wsl --install
