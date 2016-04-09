
## Discover new disk on Linux
To discover new disk:
	lsblk -io KNAME,TYPE,SIZE,MODEL

Output
	KNAME     TYPE  SIZE MODEL
	sda       disk 28.8G SD  Transcend   
	sda1      part  821M 
	sda2      part    1K 
	sda3      part   32M 
	sda5      part   60M 
	mmcblk0   disk 29.7G 
	mmcblk0p1 part  1.1G 
	mmcblk0p2 part    1K 
	mmcblk0p5 part   32M 
	mmcblk0p6 part   63M 
	mmcblk0p7 part 28.5G 

