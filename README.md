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

## License

This program is released under the terms of the GNU Affero General Public License version 3.0

