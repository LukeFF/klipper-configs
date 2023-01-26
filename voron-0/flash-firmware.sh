sudo service klipper stop
cd ~/klipper/
make clean
cp ~/printer_data/config/config/voron-0/.skr-mini-e3-v3.config ~/klipper/.config
make
./scripts/flash-sdcard.sh /dev/serial/by-id/usb-Klipper_stm32g0b1xx_2B0051000550414235393120-if00 btt-skr-mini-v3

cd ~/klipper/
make clean
cp  ~/printer_data/config/config/voron-0/.klipper-expander.config ~/klipper/.config
make flash FLASH_DEVICE=0483:df11

ls /dev/serial/by-id/*
sudo service klipper start
