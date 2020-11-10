#kernel version
echo
echo "kernel version"
uname -a
#for the os version
echo

echo -e "os version"
echo -e "lsb_release -a"
lsb_release -a
echo

echo -e "cat /proc/*release"
cat /etc/*release
echo

echo -e "cat /etc/issue*"
cat /etc/issue* 
echo

echo -e "cat /proc/version"
cat /proc/version
