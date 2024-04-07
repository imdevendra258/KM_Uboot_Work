cmd_spl/dts/dt-spl.dtb := ./tools/fdtgrep -b u-boot,dm-pre-reloc -b u-boot,dm-spl -RT arch/arm/dts/am335x-evm.dtb -n /chosen -n /config -O dtb | ./tools/fdtgrep -r -O dtb - -o spl/dts/dt-spl.dtb 
