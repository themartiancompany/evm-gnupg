# SPDX-License-Identifier: GPL-3.0-or-later

#    ----------------------------------------------------------------------
#    Copyright © 2024, 2025  Pellegrino Prevete
#
#    All rights reserved
#    ----------------------------------------------------------------------
#
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU Affero General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU Affero General Public License for more details.
#
#    You should have received a copy of the GNU Affero General Public License
#    along with this program.  If not, see <https://www.gnu.org/licenses/>.

PREFIX ?= /usr/local
_PROJECT=evm-gnupg
DOC_DIR=$(DESTDIR)$(PREFIX)/share/doc/$(_PROJECT)
BIN_DIR=$(DESTDIR)$(PREFIX)/bin
LIB_DIR=$(DESTDIR)$(PREFIX)/lib/$(_PROJECT)
MAN_DIR?=$(DESTDIR)$(PREFIX)/share/man

<<<<<<< HEAD
_INSTALL_FILE=\
  install \
    -vDm644
_INSTALL_DIR=\
  install \
    -vdm755
_INSTALL_EXE=\
  install \
    -vDm755

DOC_FILES=\
  $(wildcard \
      *.rst)
SCRIPT_FILES=\
  $(wildcard \
      $(_PROJECT)/*)
=======
DOC_FILES=\
  $(wildcard *.rst) \
  $(wildcard *.md)
SCRIPT_FILES=$(wildcard $(_PROJECT)/*)
>>>>>>> d5f7e3f455c75e69f75821e75bca505ecedd35ea

all:

check: shellcheck

shellcheck:

<<<<<<< HEAD
	shellcheck \
	  -s \
	    "bash" \
	  $(SCRIPT_FILES)

=======
>>>>>>> d5f7e3f455c75e69f75821e75bca505ecedd35ea
install: install-scripts install-doc install-man

install-scripts:

	$(_INSTALL_EXE) \
	  "$(_PROJECT)/evm-gpg" \
	  "$(BIN_DIR)/evm-gpg"

install-doc:

	$(_INSTALL_FILE) \
	  $(DOC_FILES) \
	  -t \
	  $(DOC_DIR)

install-man:

<<<<<<< HEAD
	$(_INSTALL_DIR)
=======
	$(_INSTALL_DIR) \
>>>>>>> d5f7e3f455c75e69f75821e75bca505ecedd35ea
	  "$(MAN_DIR)/man1"
	rst2man \
	  "man/evm-gpg.1.rst" \
	  "$(MAN_DIR)/man1/evm-gpg.1"

.PHONY: check install install-doc install-man install-scripts shellcheck
