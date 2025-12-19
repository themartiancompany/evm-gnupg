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

GNUPG wrapper compatible
with the "OpenPGP on Ethereum"
address specification
proposal by The Martian Company.

EVM GNUPG uses EVM Wallet to
interface with Ethereum's External
Owner Accounts (EOA, ie. wallets).


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

* list *filter*
 
  List the available signing/encrypting
  keys in the local database.


Export arguments
=================

* *out-file* 

  File in which to save the
  exported key.

* *key-type*
  
  It can be 'public' or
  'private'.


Import arguments
==================

* *input-source*

  It can be one between
  * a directory;
  * a key fingerprint;
  * a file.


List arguments
==================

* *filter*

  A filter to pass GPG to select
  a group of keys. Be aware that
  for certain output types only
  single results can be retrieved
  using the list command.


Publish arguments
==================

* *filter*
 
  Same as above.


Receive arguments
==================

* *filter*
 
  It can be a OpenPGP key fingerprint,
  an EOA address or an EVM Wallet contact
  name respectively if the output type
  selected is 'fingerprint', 'address'
  or contact.


Networks
=========

All those supported by
'evm-chains-info' as
well as direct RPC addresses.


Options
========

-H gnupg-home           GNUPG home directory
-K gnupg-public         Public keys keyring GNUPG
                        home directory.
-t <key-type>           It can be 'public' or 'private'.
-Q                      If enabled, passes the *--with-colons*
                        serializing option to GPG.


Key creation options
=========================

-P passphrase           Key passphrase (for 'new' command).
-C comment              Key comment (for 'new' command).
-S                      If enabled, automatically publishes
                        the newly key on the EVM OpenPGP
                        Key Server.


List options
==============
-o output-type          It can be empty, 'fingerprint',
                        'name' or 'email' or 'full'.
-a wallet-address       Override credentials options.


Receive options
=================

-i input-type           It can be 'auto', 'address',
                        'contact'.


Credentials options
=====================

-N wallet-name          Wallet name.
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


Address specification
=======================

An OpenPGP key for an
External Owner Account
having address *address* is
a standard OpenPGP key associated
to an user ID of the form

*username@address*


Key validity
===============

An EOA OpenPGP key is defined
valid according to a source
when the the source has published
the key on an EVM OpenPGP Key Server
deployment.

When the source is the EOA
itself, the key is defined
valid.


Examples
===========

* Creates and validate (publish on the EVM Key Server) a new key
  for wallet 'user':

  ..  code-block:: bash
  
     evm-gpg \
       -S \
       new \
         "user" \
         "User's Real Name"

* Retrieves the valid public key corresponding to a given fingerprint.

  ..  code-block:: bash
  
     evm-gpg \
       receive \
       "ANOPENPGPKEYFINGERPRINT"

* Display general information about valid keys for EOA with Ethereum address *0xfortytwochars*

  ..  code-block:: bash
  
     evm-gpg \
       list \
       "@0xfortytwochars"

* Display all EOA addresses who published a valid key with username *john*

  ..  code-block:: bash
  
     evm-gpg \
       list \
       "john@"

* Display the public key fingerprints for EOA with Ethereum address *0xabcdef*

  ..  code-block:: bash
  
     evm-gpg \
       -o \
         "fingerprint" \
       -- \
       list \
       "john@"


Bugs
====

https://github.com/themartiancompany/evm-gnupg/-/issues

Copyright
=========

Copyright Pellegrino Prevete. AGPL-3.0.

See also
========

* evm-gpg-key-address-check
* evm-gpg-decrypt
* evm-openpgp-key-publish
* evm-openpgp-key-receive
* evm-wallet
* evm-contract-call
* gpg-key-info

.. include:: variables.rst
