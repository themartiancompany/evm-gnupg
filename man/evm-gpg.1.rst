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


<<<<<<< HEAD
===========
evm-gpg
===========

----------------------------------------------------------------------
Ethereum Virtual Machine (EVM) compatible GNU Privacy Guard wrapper
----------------------------------------------------------------------
=======
========
evm-gpg
========

-------------------------------------------
Ethereum Virtual Machine GNU Privacy Guard
-------------------------------------------
>>>>>>> d5f7e3f455c75e69f75821e75bca505ecedd35ea
:Version: evm-gpg |version|
:Manual section: 1

Synopsis
========

<<<<<<< HEAD
evm-gpg *[options]* *command* *[command_args]*


Description
===========
Ethereum Virtual Machine (EVM) compatible
networks' cryptocurrency wallet.

=======
evm-gpg *[options]* *command* *key* *value*

Description
===========

GNUPG wrapper for use by the Ethereum
Virtual Machine (EVM) Toolchain.

EVM GNUPG uses EVM Wallet to interface with
wallets.
>>>>>>> d5f7e3f455c75e69f75821e75bca505ecedd35ea

Commands
=========

<<<<<<< HEAD
* new *username* *full_name*

* export *out-file* *key-type*

* import *import_source*

* list


Export arguments
=================

*out-file*         File in which to save the
                   exported key.

*key-type*         It can be 'public' or
                   'private'.

Import sources
===============

* directory
* fingerprint
* file


Networks
=========

All those supported by
'evm-chains-info' as
well as direct RPC addresses.

=======
* new
    *username*
    *full_name*

  Creates a new key for the input
  wallet.

* list

  List the available signing/encrypting
  keys in the local database.
>>>>>>> d5f7e3f455c75e69f75821e75bca505ecedd35ea

Options
========

<<<<<<< HEAD
=======
-N wallet_name          Wallet name.
-w wallet_path          Wallet path.
-p wallet_password      Wallet password.
-s wallet_seed          Wallet seed path.
>>>>>>> d5f7e3f455c75e69f75821e75bca505ecedd35ea
-H gnupg_home           GNUPG home directory
-P passphrase           Key passphrase (for 'new' command).
-C comment              Key comment (for 'new' command).

<<<<<<< HEAD

Credentials options
=====================

-w wallet_path          Wallet path.
-p wallet_password      Wallet password.
-s wallet_seed          Wallet seed path.


LibEVM options
=================

-n network              EVM network name. Accepted values
                        are all those supported by
                        evm-chains-info and RPC addresses.

-h                      Displays help.
-c                      Enables color output
-v                      Enables verbose output

Bugs
====

https://github.com/themartiancompany/evm-gnupg/-/issues
=======
-h                      Display help message.
-c                      Enable color output
-v                      Enable verbose output
>>>>>>> d5f7e3f455c75e69f75821e75bca505ecedd35ea

Copyright
=========

Copyright Pellegrino Prevete. AGPL-3.0.

See also
========

<<<<<<< HEAD
* evm-wallet
* evm-contract-call
* evm-gpg
* ur
=======
* evm-openpgp-key-publish
* evm-openpgp-key-receive
* evm-wallet
>>>>>>> d5f7e3f455c75e69f75821e75bca505ecedd35ea

.. include:: variables.rst
