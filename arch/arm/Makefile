# SPDX-License-Identifier: GPL-2.0+

# This selects which instruction set is used.
arch-$(CONFIG_ARM64)		=-march=armv8-a

# On Tegra systems we must build SPL for the armv4 core on the device
# but otherwise we can use the value in CONFIG_SYS_ARM_ARCH
arch-y += -D__LINUX_ARM_ARCH__=$(CONFIG_SYS_ARM_ARCH)

# Evaluate arch cc-option calls now
arch-y := $(arch-y)

# This selects how we optimise for the processor.
tune-$(CONFIG_ARM64)		=

# Evaluate tune cc-option calls now
tune-y := $(tune-y)

PLATFORM_CPPFLAGS += $(arch-y) $(tune-y)

# Machine directory name.  This list is sorted alphanumerically
# by CONFIG_* macro name.
machine-$(CONFIG_ARCH_ROCKCHIP)		+= rockchip

machdirs := $(patsubst %,arch/arm/mach-%/,$(machine-y))

PLATFORM_CPPFLAGS += $(patsubst %,-I$(srctree)/%include,$(machdirs))

libs-y += $(machdirs)

head-y := arch/arm/cpu/$(CPU)/start.o

libs-y += arch/arm/cpu/$(CPU)/
libs-y += arch/arm/lib/

