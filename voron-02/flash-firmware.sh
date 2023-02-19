#!/bin/sh

sudo service klipper stop
cd ~/klipper/
make clean
cp ~/printer_data/config/config/voron-02/.skr-mini-e3-v3.config ~/klipper/.config
make
./scripts/flash-sdcard.sh /dev/serial/by-id/usb-Klipper_stm32g0b1xx_2B0051000550414235393120-if00 btt-skr-mini-v3

cd ~/klipper/
make clean
cp  ~/printer_data/config/config/voron-02/.linux-host.config ~/klipper/.config
make flash

sudo service klipper start

