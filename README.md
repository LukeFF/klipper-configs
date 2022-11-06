# klipper-configs
Klipper config files for my 3d printers
- Voron Switchwire with Einsy Rambo Board
- RatRig V-Minion with BTT SKR Pico
- Voron 0 v0.1 with BTT SKR Mini E3 V3 + Klipper Expander

# Installation
- Clone repository

        cd ~/printer_data/config
        git clone https://github.com/LukeFF/klipper-configs.git ./config
- Edit ~/printer_data/config/printer.cfg

        [include ./config/{PRINTER_MODEL}/printer.cfg]