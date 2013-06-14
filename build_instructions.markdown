#Hackday image preperation instructions

##Mounting SD card (only required on adam's computer)

run (as root): `echo 1 > /sys/bus/pci/rescan`

##Burning image to card

Identify the disk, this should be: `mmcblk0`, then run the 'dd' command to actually write it (again as root): `dd bs=4M if=~/hackaday_image_raspbian.img of=/dev/mmcblk0`. Run the `sync` command to flush the write.

##Update the wifi information for the user of the Pi

Wifi information on the SD card is stored at: 

	/run/media/adam/41cd5baa-7a62-4706-b8e8-02c43ccee8d9/etc/wpa_supplicant/wpa_supplicant.conf

or essentially: `/mountpoint/etc/wpa_supplicant/wpa_supplicant.conf`. Update the `username` and `password` fields to username and password of whoever's going to be using the system.

##Update the hostname 

Update the hostname to a reasonable name (something like the user's username?), this is stored at `/mountpoint/etc/hostname`.

