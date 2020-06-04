#! /bin/bash
echo -e '\n--------------------\n' >>/var/log/rtl/rtl1.log
echo `date` >>/var/log/rtl/rtl1.log
sleep 10s
nohup /usr/local/bin/rtl_433 -f 433.92M -M newmodel -F mqtt:localhost:1883 >>/var/log/rtl/rtl1.log 2>&1 &
disown
sleep 5s
echo -e '\n--------------------\n' >>/var/log/rtl/rtl2.log
echo `date` >>/var/log/rtl/rtl2.log
#nohup /usr/local/bin/rtl_433 -f 310.422M -M newmodel -R 22 -F mqtt:localhost:1883 >>/var/log/rtl/rtl2.log 2>&1 &
disown

