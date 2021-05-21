# usge lsblk command to fine your usb 
#Replace X accordingly in both commands

sudo umount /dev/sdX
sudo dd if=/path/to/ubuntu.iso of=/dev/sdbX bs=1M

#Just be sure /dev/sdX is the flash drive you wish to use (it will destroy the data on the flash drive).
