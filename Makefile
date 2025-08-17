#
# SPDX-License-Identifier: GPL-3.0-or-later

PREFIX ?= /usr/local
_PROJECT=evm-gnupg
DOC_DIR=$(DESTDIR)$(PREFIX)/share/doc/$(_PROJECT)
BIN_DIR=$(DESTDIR)$(PREFIX)/bin
LIB_DIR=$(DESTDIR)$(PREFIX)/lib/$(_PROJECT)

DOC_FILES=$(wildcard *.rst)
SCRIPT_FILES=$(wildcard $(_PROJECT)/*)

all:

check: shellcheck

shellcheck:

	shellcheck \
	  -s \
	    "bash" \
	  $(SCRIPT_FILES)

install: install-scripts install-doc install-man

install-scripts:

	install \
	  -vDm755 \
	  "$(_PROJECT)/evm-gpg" \
	  "$(BIN_DIR)/evm-gpg"

install-doc:

	install \
	  -vDm644 \
	  $(DOC_FILES) \
	  -t \
	  $(DOC_DIR)

install-man:

	install \
	  -vdm755 \
	  "$(MAN_DIR)/man1"
	rst2man \
	  "man/evm-gpg.1.rst" \
	  "$(MAN_DIR)/man1/evm-gpg.1"

.PHONY: check install install-doc install-scripts shellcheck
