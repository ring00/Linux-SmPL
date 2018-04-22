# Linux-SmPL

## Target Kernel Module

drivers/input/keyreset.c

## Result

```bash
➜  common git:(android-4.14) git checkout android-3.0 drivers/input/keyreset.c
➜  common git:(android-4.14) ✗ make allyesconfig O=build
➜  common git:(android-4.14) ✗ make drivers/input/keyreset.o O=build
```

keyreset.c@android-3.0 can be successfully built on android-4.14

## 4.9-4.14

No internal change.

No relevant external API change.

No semantic patch applied.

## 4.4-4.9

No internal change.

No relevant external API change.

A semantic patch applied.

The semantic patch is too generic and lacks proper contextual information:

```diff
//# pattern-1, witnesses: 36
@@
expression E0;
@@
- E0->dev
+ E0->parent
```

which should have been:

```diff
@@
struct gpio_chip *var;
@@
-var->dev
+var->parent
```

Resulting in a **5 incorrect instances**.

## 4.1-4.4

An internal change.

No relevant external API change.

No semantic patch applied.

```diff
commit 3ed870f4b0c746b94dd9c677c4a37dfb3db5fa01
Author: Eric Ernst <eric.ernst@linux.intel.com>
Date:   Fri Sep 2 16:12:06 2016 -0700

    ANDROID: input: keyreset: switch to orderly_reboot
    
    Prior restart function would make a call to sys_sync and then
    execute a kernel reset.  Rather than call the sync directly,
    thus necessitating this driver to be builtin, call orderly_reboot,
    which will take care of the file system sync.
    
    Note: since CONFIG_INPUT Kconfig is tristate, this driver can be built
    as module, despite being marked bool.
    
    Signed-off-by: Eric Ernst <eric.ernst@linux.intel.com>

 drivers/input/keyreset.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)
```


## 3.4-3.10

Massive internal changes.

No relevant external API change.

No semantic patch applied.

```diff
commit 514c1205c9266ac181c6d9b6c1d4aea9f09e92ea
Author: Daniel Rosenberg <drosen@google.com>
Date:   Fri Jun 27 16:39:35 2014 -0700

    ANDROID: input: keyreset: Made keyreset more robust
    
    Switched do_restart to run in a seperate workqueue to  handle
    cases where kernel_restart hangs.
    
    Change-Id: I1ecd61f8d0859f1a86d37c692351d644b5db9c69
    Signed-off-by: Daniel Rosenberg <drosen@google.com>

 drivers/input/keyreset.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)
```

```diff
commit e82706f0103c1229440c81b61a6b0a58ca2b2e5b
Author: Daniel Rosenberg <drosen@google.com>
Date:   Wed May 7 14:17:47 2014 -0700

    ANDROID: input: keyreset: Changed keyreset to act as a wrapper for keycombo.
    
    keyreset now registers a keycombo driver that acts as the old
    keyreset driver acted.
    
    Change-Id: I08f5279e3a33b267571b699697f9f54508868983
    Signed-off-by: Daniel Rosenberg <drosen@google.com>

 drivers/input/keyreset.c | 206 +++++++++++++----------------------------------
 1 file changed, 55 insertions(+), 151 deletions(-)
```

## 3.3-3.4

No internal change.

No relevant external API change.

No semantic patch applied.

## 3.0-3.3

No internal change.

No relevant external API change.

No semantic patch applied.

## 3.0

This module is introduced to Andorid Common Kernel.

```diff
commit dd06fdde72249ff53324ec5aaee519b77c234bf7
Author: Arve Hjønnevåg <arve@android.com>
Date:   Fri Nov 21 21:47:23 2008 -0800

    ANDROID: input: keyreset: Add keyreset driver.
    
    Add a platform device in the board file to specify a reset key-combo.
    The first time the key-combo is detected a work function that syncs
    the filesystems is scheduled. If all the keys are released and then
    pressed again, it calls panic. Reboot on panic should be set for
    this to work.
    
    Change-Id: I9d54283ca1fba45e4b1ae1a407524cdda8171143
    Signed-off-by: Arve Hjønnevåg <arve@android.com>

 drivers/input/keyreset.c | 239 +++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 239 insertions(+)
```
