. ./config.ini

while true
do
wget http://pogoda.by -q index.html
grep strong index.html | grep '[+-][[:digit:]]*\.[[:digit:]]' | sed 's/<br.*//g' | awk '{print $6}' | sed 's/C.*/ /g' | awk  '{print $1}'
rm -f index.html
sleep $sleepTime
done
