..
   SPDX-License-Identifier: AGPL-3.0-or-later

   ----------------------------------------------------------------------
   Copyright © 2024, 2025  Pellegrino Prevete

   All rights reserved
   ----------------------------------------------------------------------

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU Affero General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU Affero General Public License for more details.

   You should have received a copy of the GNU Affero General Public License
   along with this program.  If not, see <https://www.gnu.org/licenses/>.


========
evm-gpg
========

-------------------------------------------
Ethereum Virtual Machine GNU Privacy Guard
-------------------------------------------
:Version: evm-gpg |version|
:Manual section: 1

Synopsis
========

evm-gpg *[options]* *command* *key* *value*

Description
===========

GNUPG wrapper for use by the Ethereum
Virtual Machine (EVM) Toolchain.

EVM GNUPG uses EVM Wallet to interface with
wallets.

Commands
=========

* new
    *username*
    *full_name*

  Creates a new key for the input
  wallet.

* list

  List the available signing/encrypting
  keys in the local database.

Options
========

-N wallet_name          Wallet name.
-w wallet_path          Wallet path.
-p wallet_password      Wallet password.
-s wallet_seed          Wallet seed path.
-H gnupg_home           GNUPG home directory
-P passphrase           Key passphrase (for 'new' command).
-C comment              Key comment (for 'new' command).

-h                      Display help message.
-c                      Enable color output
-v                      Enable verbose output

Copyright
=========

Copyright Pellegrino Prevete. AGPL-3.0.

See also
========

* evm-openpgp-key-publish
* evm-openpgp-key-receive
* evm-wallet

.. include:: variables.rst
