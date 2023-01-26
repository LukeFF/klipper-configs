sudo service klipper stop
cd ~/klipper/
make clean
cp ~/printer_data/config/config/voron-24r2/.config-klipper-octopus ~/klipper/.config
make
cd ~/CanBoot/scripts/
python3 flash_can.py -f ~/klipper/out/klipper.bin -d /dev/serial/by-id/usb-CanBoot_stm32f446xx_2D0005001150324E31333220-if00

cd ~/klipper/
make clean
cp  ~/printer_data/config/config/voron-24r2/.config-klipper-ebb36 ~/klipper/.config
make
cd ~/CanBoot/scripts
python3 flash_can.py -f ~/klipper/out/klipper.bin -u 9f762b35e09e

sudo service klipper start
