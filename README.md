# Linux-SmPL

## Target Kernel Module

drivers/input/misc/keychord.c

## Result

```bash
➜  common git:(android-4.14) git checkout android-3.0 drivers/input/misc/keychord.c
➜  common git:(android-4.14) ✗ make allyesconfig O=build
➜  common git:(android-4.14) ✗ make drivers/input/misc/keychord.o O=build
```

keychord.c@android-3.0 can be successfully built on android-4.14

## 4.9-4.14

Module removed.

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

Resulting in a **1 incorrect instances**.

## 3.3-4.4

Massive internal changes for fixing bugs.

No relevant external API change.

No semantic patch applied.

```diff
commit 855ea747806b2e31b844d6fdacd97e0a836be207
Author: Suren Baghdasaryan <surenb@google.com>
Date:   Thu Mar 1 16:35:31 2018 -0800

    ANDROID: keychord: Check for write data size
    
    keychord driver causes a kernel warning when writing more than
    (1 << (MAX_ORDER - 1)) * PAGE_SIZE bytes to /dev/keychord.
    In reality writes to this file should be much smaller, so
    limiting data size to PAGE_SIZE seems to be appropriate.
    This change checks write data size and if it's more than
    PAGE_SIZE causes write to fail.
    
    Bug: 73962978
    
    Change-Id: I8a064a396d4259ffca924fa35d80e9700c4f8d79
    Signed-off-by: Suren Baghdasaryan <surenb@google.com>
---
 drivers/input/misc/keychord.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
```

```diff
commit 60366263e6aeac89f9c92978d075529ef3303c0a
Author: Mohan Srinivasan <srmohan@google.com>
Date:   Wed Aug 9 12:36:33 2017 -0700

    ANDROID: keychord: Fix for a memory leak in keychord.
    
    Fixes a steady memory leak in the keychord release code. A close of
    the keychord device will leak 1 keychord structure. Easily
    reproducible by a simple program that does an open()->write()->close()
    of the keychord device.
    
    Bug: 64483974
    Change-Id: I1fa402c666cffb00b8cfd6379d9fe47a0989152c
    Signed-off-by: Mohan Srinivasan <srmohan@google.com>
    (cherry picked from commit 72a8dae2c25d0277e48672ee85b70236268add01)
---
 drivers/input/misc/keychord.c | 1 +
 1 file changed, 1 insertion(+)
```

```diff
commit 8253552b9900cf4497e1c7d15a83ddc5995abcd8
Author: Mohan Srinivasan <srmohan@google.com>
Date:   Wed Aug 9 12:16:56 2017 -0700

    ANDROID: input: keychord: Fix races in keychord_write.
    
    There are multiple bugs caused by threads racing in keychord_write.
    1) Threads racing through this function can cause the same element to
    be added to a linked list twice (multiple calls to
    input_register_handler() for the same input_handler struct). And the
    races can also cause an element in a linked list that doesn't exist
    attempted to be removed (multiple calls to input_unregister_handler()
    with the same input_handler struct).
    2) The races can also cause duplicate kfree's of the keychords
    struct.
    
    Bug: 64133562
    Bug: 63974334
    Change-Id: I6329a4d58c665fab5d3e96ef96391e07b4941e80
    Signed-off-by: Mohan Srinivasan <srmohan@google.com>
---
 drivers/input/misc/keychord.c | 61 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 60 insertions(+), 1 deletion(-)
```

```diff
commit dd5826152c53c1ea77986c1f3d99050d538e65e3
Author: Mohan Srinivasan <srmohan@google.com>
Date:   Thu Jul 27 11:30:32 2017 -0700

    Use %zu to print resid (size_t).
    
    Print resid (size_t) portably.
    
    Signed-off-by: Mohan Srinivasan <srmohan@google.com>
    Change-Id: Ic5c9dc498bfeef2be21594ec5efd45a98a3c4b4d
    (cherry picked from commit a1e4c795e1b6de6b34b8cbc75499d1675608c36b)
---
 drivers/input/misc/keychord.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)
```

```diff
commit eac37ad2df7ecf81b8dba0b64e9ed52351f73d63
Author: Mohan Srinivasan <srmohan@google.com>
Date:   Wed Jul 26 12:14:41 2017 -0700

    ANDROID: keychord: Fix a slab out-of-bounds read.
    
    Fix a slab out of bounds read in keychord_write(), detected by KASAN.
    
    Signed-off-by: Mohan Srinivasan <srmohan@google.com>
    Bug: 63962952
    Change-Id: Iafef48b5d7283750ac0f39f5aaa767b1c3bf2004
    (cherry picked from commit 913d980e07d84a843f5323acc55d185212a2abec)
---
 drivers/input/misc/keychord.c | 28 ++++++++++++++++++++++------
 1 file changed, 22 insertions(+), 6 deletions(-)
```

## 3.0-3.3

No internal change.

No relevant external API change.

No semantic patch applied.

## 3.0

This module is introduced to Andorid Common Kernel.

```diff
commit 26a59a0fd85cb7af8c521579037e85b04e6dbbdb
Author: Mike Lockwood <lockwood@android.com>
Date:   Mon Dec 15 14:51:56 2008 -0500

    input: keychord: Add keychord driver
    
    This driver allows userspace to receive notification when client
    specified key combinations are pressed.
    The client opens /dev/keychord and writes a list of keychords
    for the driver to monitor.
    The client then reads or polls /dev/keychord for notifications.
    A client specified ID for the keychord is returned from read()
    when a keychord press is detected.
    
    Signed-off-by: Mike Lockwood <lockwood@android.com>
    
    keychord: fix to build without CONFIG_PREEMPT
    
    Change-Id: I911f13aeda4224b6fa57863bc7e8972fec8837fb
---
 drivers/input/misc/keychord.c | 387 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 387 insertions(+)
```
