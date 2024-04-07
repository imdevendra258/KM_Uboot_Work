cmd_arch/arm/dts/am335x-icev2.dtb := mkdir -p arch/arm/dts/ ; (cat arch/arm/dts/am335x-icev2.dts; echo '$(pound)include "am33xx-u-boot.dtsi"') > arch/arm/dts/.am335x-icev2.dtb.pre.tmp; arm-linux-gnueabihf-gcc -E -Wp,-MD,arch/arm/dts/.am335x-icev2.dtb.d.pre.tmp -nostdinc -I./arch/arm/dts -I./arch/arm/dts/include -Iinclude -I./include -I./arch/arm/include -include ./include/linux/kconfig.h -D__ASSEMBLY__ -undef -D__DTS__ -x assembler-with-cpp -o arch/arm/dts/.am335x-icev2.dtb.dts.tmp arch/arm/dts/.am335x-icev2.dtb.pre.tmp ; ./scripts/dtc/dtc -O dtb -o arch/arm/dts/am335x-icev2.dtb -b 0 -i arch/arm/dts/  -Wno-unit_address_vs_reg -Wno-simple_bus_reg -Wno-unit_address_format -Wno-pci_bridge -Wno-pci_device_bus_num -Wno-pci_device_reg -Wno-avoid_unnecessary_addr_size -Wno-alias_paths  -d arch/arm/dts/.am335x-icev2.dtb.d.dtc.tmp arch/arm/dts/.am335x-icev2.dtb.dts.tmp ; cat arch/arm/dts/.am335x-icev2.dtb.d.pre.tmp arch/arm/dts/.am335x-icev2.dtb.d.dtc.tmp > arch/arm/dts/.am335x-icev2.dtb.d ; sed -i "s:arch/arm/dts/.am335x-icev2.dtb.pre.tmp:arch/arm/dts/am335x-icev2.dts:" arch/arm/dts/.am335x-icev2.dtb.d

source_arch/arm/dts/am335x-icev2.dtb := arch/arm/dts/am335x-icev2.dts

deps_arch/arm/dts/am335x-icev2.dtb := \
  arch/arm/dts/am33xx.dtsi \
  arch/arm/dts/include/dt-bindings/gpio/gpio.h \
  arch/arm/dts/include/dt-bindings/pinctrl/am33xx.h \
  arch/arm/dts/include/dt-bindings/pinctrl/omap.h \
  arch/arm/dts/include/dt-bindings/clock/am3.h \
  arch/arm/dts/am33xx-clocks.dtsi \
  arch/arm/dts/tps65910.dtsi \
  arch/arm/dts/am33xx-u-boot.dtsi \

arch/arm/dts/am335x-icev2.dtb: $(deps_arch/arm/dts/am335x-icev2.dtb)

$(deps_arch/arm/dts/am335x-icev2.dtb):
