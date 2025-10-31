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


===========
evm-gpg
===========

----------------------------------------------------------------------
Ethereum Virtual Machine (EVM) compatible GNU Privacy Guard wrapper
----------------------------------------------------------------------
:Version: evm-gpg |version|
:Manual section: 1

Synopsis
========

evm-gpg *[options]* *command* *[command_args]*


Description
===========

GNUPG wrapper for use by the Ethereum
Virtual Machine (EVM) Toolchain.

EVM GNUPG uses EVM Wallet to interface with
wallets.

Commands
==========

* new *username* *full_name*

  Creates a new key for the input
  wallet.

* export *out-file* *key-type*

  Exports the key corresponding to
  the wallet.

* import *import-source*

  Import a key from an input source.

* list *output-type*
 
  List the available signing/encrypting
  keys in the local database.


Export arguments
=================

 *out-file*         File in which to save the
                    exported key.

 *key-type*         It can be 'public' or
                    'private'.


Import arguments
==================

 *input-source*     It can be one between
                    * a directory;
                    * a key fingerprint;
                    * a file.

List arguments
==================

 *output-type*     It can be either empty
                   or 'fingerprint' or
                   'name' or 'email'.


Networks
=========

All those supported by
'evm-chains-info' as
well as direct RPC addresses.


Options
========

-H gnupg-home           GNUPG home directory
-Q                      If enabled, passes the *--with-colons*
                        serializing option to GPG.
-o output-type          Key comment (for 'new' command).


Key creation options
=========================

-P passphrase           Key passphrase (for 'new' command).
-C comment              Key comment (for 'new' command).


Receive options
=================

-i input-type           It can be 'auto', 'address',
                        'contact'.


Credentials options
=====================

-N wallet_name          Wallet name.
-w wallet-path          Wallet path.
-p wallet-password      Wallet password.
-s wallet-seed          Wallet seed path.


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

Copyright
=========

Copyright Pellegrino Prevete. AGPL-3.0.

See also
========

* evm-openpgp-key-publish
* evm-openpgp-key-receive
* evm-wallet
* evm-contract-call

.. include:: variables.rst
