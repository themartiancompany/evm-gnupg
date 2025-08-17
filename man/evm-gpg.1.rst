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
Ethereum Virtual Machine (EVM) compatible
networks' cryptocurrency wallet.


Commands
=========

* new *username* *full_name*

* import *import_source*

* list


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


Options
========

-H gnupg_home           GNUPG home directory
-P passphrase           Key passphrase (for 'new' command).
-C comment              Key comment (for 'new' command).


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

Copyright
=========

Copyright Pellegrino Prevete. AGPL-3.0.

See also
========

* evm-wallet
* evm-contract-call
* evm-gpg
* ur

.. include:: variables.rst
