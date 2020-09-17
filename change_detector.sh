val=true
wget --no-check-certificate pradyoth.cardanosquare.com >/dev/null 2>&1
hash=$(sha1sum index.html)
rm index.html
while $val;
do
wget --no-check-certificate results.vtu.ac.in >/dev/null 2>&1
nhash=$(sha1sum index.html)
rm index.html

if [ "$hash" = "$nhash" ]
then
	echo No change detected
	echo Last updated at $(date | awk '{print $4}')
else
	echo Change detected
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
