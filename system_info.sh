echo "cpu info"
cat /proc/cpuinfo
echo

echo "model name of cpu"
cat /proc/cpuinfo | grep "model name"
echo

echo -e "dmicode"
sudo dmidecode
echo

echo -e "dmicode version"
sudo dmidecode | grep Version
echo

echo -e "system info"
echo 
sudo dmidecode | grep -A 9 "System Information"