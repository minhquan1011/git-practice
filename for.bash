#!/bin/sh
cat << MENU
	1: date
	2,4: print working directory
	3: print user name
	5-12: print host name
MENU
read -p "Select a menu : " number
case $number in
1)	date ;;
2|4)	pwd ;;
3)	whoami ;;
[5-9] | 1[0-2])	hostname ;;
*) echo illegal menu ;;
esac

