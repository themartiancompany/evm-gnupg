[comment]: <> (SPDX-License-Identifier: AGPL-3.0)

[comment]: <> (-------------------------------------------------------------)
[comment]: <> (Copyright © 2024, 2025  Pellegrino Prevete)
[comment]: <> (All rights reserved)
[comment]: <> (-------------------------------------------------------------)

[comment]: <> (This program is free software: you can redistribute)
[comment]: <> (it and/or modify it under the terms of the GNU Affero)
[comment]: <> (General Public License as published by the Free)
[comment]: <> (Software Foundation, either version 3 of the License.)

[comment]: <> (This program is distributed in the hope that it will be useful,)
[comment]: <> (but WITHOUT ANY WARRANTY; without even the implied warranty of)
[comment]: <> (MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the)
[comment]: <> (GNU Affero General Public License for more details.)

[comment]: <> (You should have received a copy of the GNU Affero General Public)
[comment]: <> (License along with this program.)
[comment]: <> (If not, see <https://www.gnu.org/licenses/>.)


# EVM GNUPG

GNUPG wrapper to manage an EVM-compatible GPG keys.

```bash
$ evm-gpg \
    -h

  GNUPG wrapper for use by the EVM Toolchain
  
  Usage:
    evm-gpg
      [options]
      <command>
      <key>
      <value>
  
    commands:
      new
        <username>
        <full_name>
      list
  
    options:
       -N <wallet_name>       Wallet name.
       -w <wallet_path>       Wallet path.
       -p <wallet_password>   Wallet password.
       -s <wallet_seed>       Wallet seed path.
       -H <gnupg_home>        GNUPG home directory
       -P <passphrase>        Key passphrase (for 'new' command).
       -C <comment>           Key comment (for 'new' command).
  
       -h                     This message.
       -c                     Enable color output
       -v                     Enable verbose output
```

## Installation

The program in this source repo
can be installed from source using GNU Make.

```bash
make \
  install
```

The program has been officially published on the
the uncensorable
[Ur](
  https://github.com/themartiancompany/ur)
user repository and application store as
`evm-contracts-tools`.
The source code is published on the
[Ethereum Virtual Machine File System](
  https://github.com/themartiancompany/evmfs)
so it can't possibly be taken down.

To install it from there just type

```bash
ur \
  evm-gnupg
```

A censorable HTTP Github mirror of the recipe published there,
containing a full list of the software dependencies needed to run the
tools is hosted on
[evm-gnupg-ur](
  https://github.com/themartiancompany/evm-gnupg-ur).

Be aware the mirror could go offline any time as Github and more
in general all HTTP resources are inherently unstable and censorable.

## License

This program is released by Pellegrino Prevete under the terms
of the GNU Affero General Public License version 3.
