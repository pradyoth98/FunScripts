val=true
while $val;
do
stat=$(nc -z cardanosquare.com 80; echo $?)
if [ $stat -eq 0 ]
then
	echo Server still running
	echo Last updated at $(date | awk '{print $4}')
else
	echo Server down
	echo Last updated at $(date | awk '{print $4}')
	val=false
fi




sleep 60s
tput cuu1;tput el;
tput cuu1;tput el;
done


while true;
do
	echo -en "\007"	
done
