echo "read before use !! (Recomended)"
echo -e "this script has four sections "
echo -e "1 for removing lock file at /var/lib/dpkg/lock "
echo -e "2 for removing lock-frontend file at /varlib/dpkg/lock-frontend"
echo -e "3 for both"
echo -e "4 for the lock file at /var/cache/apt/archives/lock"
echo -e "5 for installing broken packages"
echo -e "6 for the dpkg reconfigure"
echo

read -p "option you want to choose" optn
case $optn in
	0) echo "re run the program" ;;
	1) echo "selected for remmoving lock file at /var/libdpkg/lock"
		# then remove the lock file 
		sudo rm /var/lib/dpkg/lock || sudo killall dpkg ;;
	
	
	2) echo "selected for removing lock-frontend file at /varlib/dpkg/lock-frontend "
		sudo rm /var/lib/dpkg/lock-frontend || sudo killall dpkg ;;
	3) echo "selected for 1 & 2"
		# if not yet unlocked ,
		lsof /var/lib/dpkg/lock
		lsof /var/lib/dpkg/lock-frontend ;;
		
	4) echo "selected for the lock file at /var/cache/apt/archives/lock"
		sudo rm /var/cache/apt/archives/lock ;;

	5) "selected for installing broken packages"
		# and if its due to broken packages 
		sudo apt-get install -f ;;
	6) echo "dpkg reconfigure"
		sudo dpkg --configure -a ;;
esac