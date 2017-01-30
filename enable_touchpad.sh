#!/bin/sh

# http://elementaryos.stackexchange.com/questions/325/how-to-easily-enable-and-disable-touchpad-without-using-the-mouse

LOGFILE=~albamc/env/touchpad.log

echo `date` > $LOGFILE

export DISPLAY=:0.0
export XAUTHORITY=/home/albamc/.Xauthority

TOUCHPADID=`xinput list | grep Touchpad | awk '{print $6}' | awk -F'=' '{print$2}'`
xinput set-prop $TOUCHPADID "Device Enabled" 1 >>$LOGFILE 2>&1

WEBCAMID=`xinput list | grep WebCam | awk '{print $5}' | awk -F'=' '{print$2}'`
xinput set-prop $WEBCAMID "Device Enabled" 1 >>$LOGFILE 2>&1

