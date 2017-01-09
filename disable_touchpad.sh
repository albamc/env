#!/bin/sh

# http://elementaryos.stackexchange.com/questions/325/how-to-easily-enable-and-disable-touchpad-without-using-the-mouse

TOUCHPADID=`sudo xinput list | grep Touchpad | awk '{print $6}' | awk -F'=' '{print$2}'`
sudo xinput set-prop $TOUCHPADID "Device Enabled" 0

WEBCAMID=`sudo xinput list | grep WebCam | awk '{print $5}' | awk -F'=' '{print$2}'`
sudo xinput set-prop $WEBCAMID "Device Enabled" 0

