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

# Ethereum Virtual Machine (EVM) GNU Privacy Guard (GNUPG)

GNUPG wrapper to manage an EVM-compatible GPG keys.

EVM GNUPG uses
[EVM Wallet](
  https://github.com/themartiancompany/evm-wallet)
to interface with wallets and it is a dependency for the
[Ur](
  https://github.com/themartiancompany/ur)
uncensorable Life and DogeOS user repository
and application store, which uses it to
generate a new Ethereum Virtual Machine
compatible network account's (an Ethereum wallet)
valid OpenPGP key, if not already present on the system.

EVM GNUPG is part of the EVM Toolchain.

## Installation

The program in this source repo
can be installed from source using GNU Make.

```bash
make \
  install
```

The collection has officially published on the
the uncensorable
[Ur](
  https://github.com/themartiancompany/ur)
user repository and application store as
`evm-gnupg`.
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

# Documentation

The manual for EVM GNUPG can be consulted by typing

```bash
man \
  evm-gpg
```

in your user terminal.

## License

This program is released by Pellegrino Prevete under the terms
of the GNU Affero General Public License version 3.
