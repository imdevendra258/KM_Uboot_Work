cmd_spl/dts/dt-spl.dtb.o := arm-linux-gnueabihf-gcc -Wp,-MD,spl/dts/.dt-spl.dtb.o.d  -nostdinc -isystem /home/devendra/Documents/gcc-linaro-13.0.0-2022.11-x86_64_arm-linux-gnueabihf/bin/../lib/gcc/arm-linux-gnueabihf/13.0.0/include -Iinclude    -I./arch/arm/include -include ./include/linux/kconfig.h -D__KERNEL__ -D__UBOOT__ -DCONFIG_SPL_BUILD -D__ASSEMBLY__ -fno-PIE -g -D__ARM__ -Wa,-mimplicit-it=always -mthumb -mthumb-interwork -mabi=aapcs-linux -mno-unaligned-access -ffunction-sections -fdata-sections -fno-common -ffixed-r9 -msoft-float -pipe -march=armv7-a -D__LINUX_ARM_ARCH__=7 -mtune=generic-armv7-a -I./arch/arm/mach-omap2/include   -c -o spl/dts/dt-spl.dtb.o spl/dts/dt-spl.dtb.S

source_spl/dts/dt-spl.dtb.o := spl/dts/dt-spl.dtb.S

deps_spl/dts/dt-spl.dtb.o := \

spl/dts/dt-spl.dtb.o: $(deps_spl/dts/dt-spl.dtb.o)

$(deps_spl/dts/dt-spl.dtb.o):
