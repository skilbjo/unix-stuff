

Server:
		$ cat /etc/exports
		/pi-root 192.168.1.0/24(ro,no_root_squash)


		showmount -e
		Export list for rspi2:
		/pi-root 192.168.1.0/24


root@rspi2:/etc# vim fstab 

proc            /proc           proc    defaults                        0       0
#/dev/mmcblk0p6 /boot           vfat    defaults                        0       2
/dev/mmcblk0p6  /boot           vfat    defaults,ro                     0       2
#/dev/mmcblk0p7 /               ext4    defaults,noatime                0       1
/dev/nfs        /               rootfs  defaults,ro                     0       0
tmpfs           /tmp            tmpfs   nodev,nosuid,size=10%,mode=1777 0       0
tmpfs           /var/log        tmpfs   nodev,nosuid,size=20%,mode=1755 0       0

touch /tmp/.tmpfs

Client:
		sudo mount rspi2:/exports/pi-root /mnt/pi-root/


		unzip 2013-07-26-wheezy-raspbian.zip
		fdisk -lu 2013-07-26-wheezy-raspbian.img
		# Start is 122880, so offset is 122880 * 512 = 62914560
		losetup -o 62914560 /dev/loop0 2013-07-26-wheezy-raspbian.img
		mount /dev/loop0 /mnt
		cp -rp /mnt/ /exports/pi-root/
		umount /mnt
		losetup -d /dev/loop0


		root@rspi2:/home/pi/raspian# fdisk -lu 2016-03-18-raspbian-jessie-lite.img 

		Disk 2016-03-18-raspbian-jessie-lite.img: 1.3 GiB, 1361051648 bytes, 2658304 sectors
		Units: sectors of 1 * 512 = 512 bytes
		Sector size (logical/physical): 512 bytes / 512 bytes
		I/O size (minimum/optimal): 512 bytes / 512 bytes
		Disklabel type: dos
		Disk identifier: 0x6f92008e

		Device                               Boot  Start     End Sectors  Size Id Type
		2016-03-18-raspbian-jessie-lite.img1        8192  131071  122880   60M  c W95 FAT32 (LBA)
		2016-03-18-raspbian-jessie-lite.img2      131072 2658303 2527232  1.2G 83 Linux

		Mutlply 2nd partition *start* by 512, ie 131072 * 512 = 67108864


