#!/bin/sh
n=-1
c=0
if [ -n "$3" ]
then
   n=$3
fi

while [ $n -ne $c ]
do
   WAIT=$(shuf -i $1-$2 -n 1)
   sleep $(echo "scale=4; $WAIT/1000" | bc)
   I=$(shuf -i 1-4 -n 1)
   D=`date -Iseconds`
   case "$I" in
      "1") echo "{'timestamp':'$D','severity':'ERROR','message':'An error is usually an exception that has been caught and not handled'}"
      ;;
      "2") echo "{'timestamp':'$D','severity':'INFO','message':'This is less important than debug log and is often used to provide context in the current task.'}"
      ;;
      "3") echo "{'timestamp':'$D','severity':'WARN','message':'A warning that should be ignored is usually at this level and should be actionable.'}"
      ;;
      "4") echo "{'timestamp':'$D','severity':'DEBUG','message':'This is a debug log that shows a log that can be ignored.'}"
      ;;
   esac
   c=$(( c+1 ))
done
