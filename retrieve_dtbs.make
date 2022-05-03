# first level depends

ifeq ($(obj),)
-include Makefile
endif

# second level depends
# SHELL := /bin/bash
dtbs-print-inner: FORCED
	@echo $(dtb-y)

dtbs-print: MAKEFILES=$(word 1,$(MAKEFILE_LIST))
dtbs-print: FORCE
	$(Q)$(MAKE) $(build)=arch/$(ARCH)/dts dtbs-print-inner
# @echo MAKEFILES=$$MAKEFILES

.PHONY: FORCED
