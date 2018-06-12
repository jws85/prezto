# cpv module

I took the [code for this plugin out of oh-my-zsh][1], and changed its
filename for use in prezto.  The rest of the readme is unchanged from
the original OMZ plugin.

This plugin defines a `cpv` function that uses `rsync` so that you
get the features and security of this command.

To enable, add `cp` to your `plugins` array in your zshrc file:

```zsh
plugins=(... cp)
```

## Description

The enabled options for rsync are:

- `-p`: preserves permissions.

- `-o`: preserves owner.

* `-g`: preserves group.

* `-b`: make a backup of the original file instead of overwriting it, if it exists.

* `-r`: recurse directories.

* `-hhh`: outputs numbers in human-readable format, in units of 1024 (K, M, G, T).

* `--backup-dir=/tmp/rsync`: move backup copies to "/tmp/rsync".

* `-e /dev/null`: only work on local files (disable remote shells).

* `--progress`: display progress.

[1] https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/cp
