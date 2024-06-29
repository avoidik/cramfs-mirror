# cramfs-mirror

A copy of files from https://sourceforge.net/projects/cramfs/ with signatures.

## Signatures

```terminal
$ sha256sum cramfs-1.0.tar.gz cramfs-1.1.tar.gz
ee9b288457a232cd02b4de4f1ce6a96424f0f3397583cef3756022105d6581cb *cramfs-1.0.tar.gz
133caca2c4e7c64106555154ee0ff693f5cf5beb9421ce2eb86baee997d22368 *cramfs-1.1.tar.gz
```

## Known issues

```
cramfs-1.1/mkcramfs.c:445: undefined reference to `minor'
cramfs-1.1/mkcramfs.c:445: undefined reference to `major'
```

Add `#include <sys/sysmacros.h>` to `mkcramfs.c` before other `#include` statements.
