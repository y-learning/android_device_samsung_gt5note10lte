# TWRP Device tree for Samsung Galaxy Tab A 9.7" SM-P555 (gt5note10lte)

Copyright 2018 - The OmniROM Project

For building TWRP for Samsung Galaxy Tab A 9.7" SM-P555.

### Kernel Source
// TO-DO : Provide the link to the kernel's repo
Check here: https://github.com/

### HOW TO BUILD KERNEL FOR SM-P555_SEA_NN_XSP

1. How to Build
	- get Toolchain
		From android git server , codesourcery and etc ..
		 - arm-linux-androideabi-
		
	- edit Makefile
		edit "CROSS_COMPILE" to right toolchain path(You downloaded).
		  EX)  export CROSS_COMPILE= $(android platform directory you download)/android/prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.8/bin/arm-linux-androideabi-
       		  Ex)  export CROSS_COMPILE=/usr/local/toolchain/arm-eabi-4.8/bin/arm-eabi-          // check the location of toolchain
		$ export CROSS_COMPILE=(compiler path)
		$ export ARCH=arm
		$ mkdir output
		$ make -C $(pwd) O=output msm8916_sec_defconfig VARIANT_DEFCONFIG=msm8916_sec_gt5note10lte_eur_defconfig SELINUX_DEFCONFIG=selinux_defconfig
		$ make -C $(pwd) O=output 
		$ cp output/arch/arm/boot/zImage arch/arm/boot/zImage
		
		Otherwise, run the executable file build_kernel.sh(toolchain is already included in the kernel code)
		$ ./build_kernel.sh

2. Output filesS
	- Kernel : output/arch/arm/boot/zImage
	- module : output/drivers/*/*.ko

3. How to Clean	
		$ cd output
		$ make clean
			
4. How to make .tar binary for downloading into target.
	- change current directory to Kernel/arch/arm/boot
	- type following command
	$ tar cvf SM-P555_SEA_NN_XSP.tar zImage
		

### Device specifications
=====================================

Basic   | Spec Sheet
-------:|:-------------------------
CPU     | Qualcomm MSM8916 Quad-core 1.2 GHz ARM® Cortex™ A53
CHIPSET | Qualcomm MSM8916 Snapdragon 410
GPU     | Adreno™ 306
Memory  | 2 GB
Shipped Android Version | 5.1.1
Storage | 16 GB
MicroSD | Up to 256 GB
Battery | 6000 mAh
Display | 1024 x 768, 9.7" (246.38mm)
Rear Camera  | 5.0 MP
Front Camera | 2.0 MP
