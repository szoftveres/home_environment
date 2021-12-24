#!/bin/sh


RUN=""


fan_on ()
{
  gpio mode 0 out
  gpio write 0 1
  RUN="1"
}

fan_off ()
{
  gpio mode 0 out
  gpio write 0 0
  RUN="0"
}

fan_off


while :
do
    TEMP=`cat /sys/class/thermal/thermal_zone0/temp`

    if test "${RUN}" = "0"; then
        sleep 2
        if test "${TEMP}" -gt "62000"; then
            fan_on
        fi
    else
        sleep 15
        if test "${TEMP}" -lt "44000"; then
            fan_off
        else
            fan_on
        fi
    fi
done

