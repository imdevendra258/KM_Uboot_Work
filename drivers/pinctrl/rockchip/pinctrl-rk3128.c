// SPDX-License-Identifier: GPL-2.0+
/*
 * (C) Copyright 2019 Rockchip Electronics Co., Ltd
 */

#include <common.h>
#include <dm.h>
#include <dm/pinctrl.h>
#include <regmap.h>
#include <syscon.h>

#include "pinctrl-rockchip.h"

static struct rockchip_mux_recalced_data rk3128_mux_recalced_data[] = {
	{
		.num = 2,
		.pin = 20,
		.reg = 0xe8,
		.bit = 0,
		.mask = 0x7
	}, {
		.num = 2,
		.pin = 21,
		.reg = 0xe8,
		.bit = 4,
		.mask = 0x7
	}, {
		.num = 2,
		.pin = 22,
		.reg = 0xe8,
		.bit = 8,
		.mask = 0x7
	}, {
		.num = 2,
		.pin = 23,
		.reg = 0xe8,
		.bit = 12,
		.mask = 0x7
	}, {
		.num = 2,
		.pin = 24,
		.reg = 0xd4,
		.bit = 12,
		.mask = 0x7
	},
};

static struct rockchip_mux_route_data rk3128_mux_route_data[] = {
	{
		/* spi-0 */
		.bank_num = 1,
		.pin = 10,
		.func = 1,
		.route_offset = 0x144,
		.route_val = BIT(16 + 3) | BIT(16 + 4),
	}, {
		/* spi-1 */
		.bank_num = 1,
		.pin = 27,
		.func = 3,
		.route_offset = 0x144,
		.route_val = BIT(16 + 3) | BIT(16 + 4) | BIT(3),
	}, {
		/* spi-2 */
		.bank_num = 0,
		.pin = 13,
		.func = 2,
		.route_offset = 0x144,
		.route_val = BIT(16 + 3) | BIT(16 + 4) | BIT(4),
	}, {
		/* i2s-0 */
		.bank_num = 1,
		.pin = 5,
		.func = 1,
		.route_offset = 0x144,
		.route_val = BIT(16 + 5),
	}, {
		/* i2s-1 */
		.bank_num = 0,
		.pin = 14,
		.func = 1,
		.route_offset = 0x144,
		.route_val = BIT(16 + 5) | BIT(5),
	}, {
		/* emmc-0 */
		.bank_num = 1,
		.pin = 22,
		.func = 2,
		.route_offset = 0x144,
		.route_val = BIT(16 + 6),
	}, {
		/* emmc-1 */
		.bank_num = 2,
		.pin = 4,
		.func = 2,
		.route_offset = 0x144,
		.route_val = BIT(16 + 6) | BIT(6),
	},
};

#define RK3128_PULL_OFFSET		0x118
#define RK3128_PULL_PINS_PER_REG	16
#define RK3128_PULL_BANK_STRIDE		8

static void rk3128_calc_pull_reg_and_bit(struct rockchip_pin_bank *bank,
					 int pin_num, struct regmap **regmap,
					 int *reg, u8 *bit)
{
	struct rockchip_pinctrl_priv *priv = bank->priv;

	*regmap = priv->regmap_base;
	*reg = RK3128_PULL_OFFSET;
	*reg += bank->bank_num * RK3128_PULL_BANK_STRIDE;
	*reg += ((pin_num / RK3128_PULL_PINS_PER_REG) * 4);

	*bit = pin_num % RK3128_PULL_PINS_PER_REG;
}

static struct rockchip_pin_bank rk3128_pin_banks[] = {
	PIN_BANK(0, 32, "gpio0"),
	PIN_BANK(1, 32, "gpio1"),
	PIN_BANK(2, 32, "gpio2"),
	PIN_BANK(3, 32, "gpio3"),
};

static struct rockchip_pin_ctrl rk3128_pin_ctrl = {
	.pin_banks		= rk3128_pin_banks,
	.nr_banks		= ARRAY_SIZE(rk3128_pin_banks),
	.label			= "RK3128-GPIO",
	.type			= RK3128,
	.grf_mux_offset		= 0xa8,
	.iomux_recalced		= rk3128_mux_recalced_data,
	.niomux_recalced	= ARRAY_SIZE(rk3128_mux_recalced_data),
	.iomux_routes		= rk3128_mux_route_data,
	.niomux_routes		= ARRAY_SIZE(rk3128_mux_route_data),
	.pull_calc_reg		= rk3128_calc_pull_reg_and_bit,
};

static const struct udevice_id rk3128_pinctrl_ids[] = {
	{ .compatible = "rockchip,rk3128-pinctrl",
		.data = (ulong)&rk3128_pin_ctrl },
	{ }
};

U_BOOT_DRIVER(pinctrl_rk3128) = {
	.name		= "pinctrl_rk3128",
	.id		= UCLASS_PINCTRL,
	.of_match	= rk3128_pinctrl_ids,
	.priv_auto_alloc_size = sizeof(struct rockchip_pinctrl_priv),
	.ops		= &rockchip_pinctrl_ops,
#if !CONFIG_IS_ENABLED(OF_PLATDATA)
	.bind		= dm_scan_fdt_dev,
#endif
	.probe		= rockchip_pinctrl_probe,
};
