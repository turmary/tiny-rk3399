# Parse source file depends

name := $(notdir ${OBJF})
dir  := $(dir ${OBJF})

-include ${dir}/.${name}.cmd

# SHELL := /bin/bash

${OBJF}: FORCE
	@echo $(filter-out FORCE,$^)

#	@for d in $(filter-out FORCE,$^); do \
#		[ "$$(realpath --relative-to=. $$d)" == "$$d" ] && \
#		echo "$$d"; \
#	done | sort

.PHONY: FORCE
