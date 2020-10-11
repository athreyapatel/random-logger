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
      "1") echo '{"severity":"ERROR","level":50,"timestamp":"2020-09-30T20:19:06.210Z","pid":17,"hostname":"123","name":"xyz","message":"RequestId: 9fcf7a84-73a7-4bcd-b022-c63afaee8d3c, route: /api/v1/transfer/?after=2020-09-30T04:14:08.290779Z, method: GET, appBuildEnv: dev, appVersion :1.7.02 An error occurred while fetching logs error:"}'
      ;;
      "2") echo '{"severity":"CRITICAL","level":50,"timestamp":"2020-09-30T20:19:06.437Z","pid":17,"hostname":"india","name":"gg","message":"RequestId: 9fcf7a84-73a7-4bcd-b022-c63afaee8d3c, route: /api/v1/transfer/?after=2020-09-30T04:14:08.290779Z, method: GET, appBuildEnv: dev, appVersion :1.7.02 An error occurred while fetching logs error:"}'
      ;;
      "3") echo '{"severity":"INFO","level":50,"timestamp":"2020-09-30T20:19:06.716Z","pid":17,"hostname":"mandya","name":"gg2","message":"RequestId: 9fcf7a84-73a7-4bcd-b022-c63afaee8d3c, route: /api/v1/transfer/?after=2020-09-30T04:14:08.290779Z, method: GET, appBuildEnv: dev, appVersion :1.7.02 An error occurred while fetching logs error:"}'
      ;;
      "4") echo '{"severity":"DEBUG","level":50,"timestamp":"2020-09-30T20:19:06.786Z","pid":17,"hostname":"gg","name":"gg3","message":"RequestId: 9fcf7a84-73a7-4bcd-b022-c63afaee8d3c, route: /api/v1/transfer/?after=2020-09-30T04:14:08.290779Z, method: GET, appBuildEnv: dev, appVersion :1.7.02 An error occurred while fetching logs error:"}'
      ;;
   esac
   c=$(( c+1 ))
done
2020-09-30T10:07:18+00:00