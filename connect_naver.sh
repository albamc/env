#!/bin/sh

sudo pkill -9 openconnect
sudo openconnect -b --juniper nsa.navercorp.com/fullmoon -u albam.c --useragent="test"

