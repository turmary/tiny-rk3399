# SPDX-License-Identifier: GPL-2.0+
#
# (C) Copyright 2002-2006
# Wolfgang Denk, DENX Software Engineering, wd@denx.de.

obj-y	+= crt0_64.o
obj-y   += setjmp_aarch64.o

obj-$(CONFIG_$(SPL_TPL_)FRAMEWORK) += spl.o
obj-$(CONFIG_SPL_FRAMEWORK) += zimage.o
obj-$(CONFIG_OF_LIBFDT) += bootm-fdt.o

obj-y	+= bdinfo.o
obj-y	+= sections.o
CFLAGS_REMOVE_sections.o := $(LTO_CFLAGS)

obj-y	+= stack.o
obj-y	+= interrupts_64.o

obj-y	+= cache.o

obj-y	+= psci-dt.o

# For building EFI apps
CFLAGS_$(EFI_CRT0) := $(CFLAGS_EFI)
CFLAGS_REMOVE_$(EFI_CRT0) := $(CFLAGS_NON_EFI)

CFLAGS_$(EFI_RELOC) := $(CFLAGS_EFI)
CFLAGS_REMOVE_$(EFI_RELOC) := $(CFLAGS_NON_EFI)

extra-$(CONFIG_CMD_BOOTEFI_HELLO_COMPILE) += $(EFI_CRT0) $(EFI_RELOC)
