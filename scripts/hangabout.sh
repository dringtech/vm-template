# This is a file which will halt provisioing
HANGABOUT_FILE=/etc/hangabout
touch ${HANGABOUT_FILE}
while [ -f ${HANGABOUT_FILE} ]; do
  sleep 30
done
