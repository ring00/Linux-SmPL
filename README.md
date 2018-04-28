# ldd3

https://github.com/duxing2007/ldd3-examples-3.x

* 3.0 35c5bf4f60b2783ada77b5c31133e99a326fd3d4
	- [ ] b8fcb0e40fa7fc28c0063760fc9f282500418bd1
	- [ ] 4feaf91dfc69ddf3e18b2898a7ac5d2e50278938
	- [ ] c09ca25286326ac4b7920f147f7f192fba49a43b
	- [x] 1a7c05bbbafe4127b350139f1f2ff358e36bfabf
	- [ ] 781f46e070caf0fe62ad7c01c57fad4cdea55d9f
	- [x] fc45962cfe46e0086d8b3b46c539cfa9c73f917c
	- [ ] e475ba4608f9a895f58f608c3b6b274f83859b6f
* 3.2 [x] 4ab2bf773751355e0b2dccc4943e0acd805ad40f
	- [x] 2eecbdd7142123d7f8e3b5d57803fca97b6c9ef7
	- [x] 5af4ea607680b2fcda5b4b1ba3172002f004f3a5
* 3.4 [ ] 8114a9289773db65579d3a690a10047a129b30ee
	- [ ] 572cacf069793cd82789d10aaea66d1d2dc4e09e
	- [ ] 4a14140299a315eac36cb87a289ac8c906db7f40
	- [ ] 123b8ac6aa9b756f870fa26178d90bb9908ed388
	- [ ] 2919a0537eb0dbe97bb4f66b473fe432527691f9
	- [ ] 1a2dc91228e4580e1aef569997af0354e3be94a7
	- [ ] e6e0291b878cab5b04a197b621f1f021aa75a913
	- [x] d4904488ba639ceb389f07ddda980c6ee9d4e052
	- [x] a4cfbfb9012445387d3aa0ca0880d8506c9af401
	- [x] be51d91c0509e1f0f47244c07a28a33ce61feebb
	- [x] 916b5f4bdbba66b018ce308945ce85c9545704f0
	- [x] 698d8b7fc8b50b31bf71612de8ce1f34ecd9a1e1
	- [ ] e11411b794fb1dc2cc71421077dca20f73ecf192
* 3.10 [ ] 9e49caf0e7e8443ddc7829105f6a39e89adb0564
	- [ ] 1d54277d2f09407455d097b853b3d6f622b0e0db
	- [ ] f9d659cfbc135b1d653020c79a41271e63c7a687
	- [x] 8068cc3578de999aaa605c6ece0424891bf5913b
	- [x] bd8d0d22cbed82efd5849995e08f35e4163efd4d
* 3.12 [ ] e5d09006d26802708b5e6ca4c001fc7b3e772ef6
	- [ ] c62214a9de165f25454144a256f1776d7b9a8fae
	- [x] df1f53b4e69c3d00e9317c52121d37f16b1a6fea
* 3.14 [ ] 56c4ee11a641978c4f51629f085f990b6def68b2
	- [x] 06eb7193dbe2dfdbd05987d3e34e06f2b95267e2
* 3.16 [x] a55b0c788e978d3a3a13d2dbaefb8facd23fafd6
	- [ ] 81ad0b7077cb780e0164eb1c12e9f22e7b5e67e1
	- [ ] f1dfd0d3a678727bbe5fbf7d26f4783fa5cf9a34
	- [ ] 9842755e5f74d7147a44c2cae44d200e9a6787f1
* 3.18 44d5df0a180bd147be7503f86506030595c46491
	- [ ] ca72db5c20b536b84f114b44b1b5dbaf22a3bad6
	- [ ] 3c7ea31326b7b9d7c53d3b65584e7d6bd6f8f6f7
	- [ ] f6936440fccf4381ee9e61b3bc01de375f807deb
	- [ ] 3a2fdebbde4050642028b7b914ebcaa5f886f351
	- [ ] e1080635b06fcb05ac93674c044a80ce4731eede
	- [ ] 497241ebe903d80f0f370b0c1834fb6ea9a1fb75
	- [ ] 127869d536f81d8f764a54a2114c8def01b1f8d0
	- [ ] 774188890569a754edebe178d9c965dc9c9ee07a
	- [ ] ad04821f7b5cd27debb3bebd2986635c2c1a01a4
* 4.1 d9ead115eff54fd39c3740e5a44e9dd5011edde8
	- [ ] 87fccb719e17fbdaee6717f5ee98e500d7695c67
	- [ ] 4c24080da6e64352e9d952055d7f5247d8dbd598
* 4.4 edc3a100ef85ce654aef57e2dd7ce8ebb323d107
	- [ ] 8304521f125ac1820a593f8fc1f485ad649ce2ee
* 4.9 52b506e886c23c2109b948dbc4bc49872e5e40f0

## 3.0 - 3.2

### pattern ?

#### commit message

```diff
commit 1a7c05bbbafe4127b350139f1f2ff358e36bfabf
Author: Du Xing <duxing2007@gmail.com>
Date:   Tue Aug 14 22:15:49 2012 +0800

    [progs]: Fix compiling errors
---
 misc-progs/inp.c      | 1 -
 misc-progs/outp.c     | 1 -
 misc-progs/setlevel.c | 9 ++-------
 3 files changed, 2 insertions(+), 9 deletions(-)

diff --git a/misc-progs/setlevel.c b/misc-progs/setlevel.c
index fec666d9c5b3..683d7490392b 100644
--- a/misc-progs/setlevel.c
+++ b/misc-progs/setlevel.c
@@ -22,12 +22,7 @@
 #include <stdlib.h>
 #include <string.h>
 #include <errno.h>
-/* #include <unistd.h> */ /* conflicting on the alpha */
-#define __LIBRARY__ /* _syscall3 and friends are only available through this */
-#include <linux/unistd.h>
-
-/* define the system call, to override the library function */
-_syscall3(int, syslog, int, type, char *, bufp, int, len);
+#include <sys/klog.h>
 
 int main(int argc, char **argv)
 {
@@ -38,7 +33,7 @@ int main(int argc, char **argv)
     } else {
         fprintf(stderr, "%s: need a single arg\n",argv[0]); exit(1);
     }
-    if (syslog(8,NULL,level) < 0) {  
+    if (klogctl(8,NULL,level) < 0) {
         fprintf(stderr,"%s: syslog(setlevel): %s\n",
                 argv[0],strerror(errno));
         exit(1);
```

### pattern 1

#### commit message

```
commit fc45962cfe46e0086d8b3b46c539cfa9c73f917c
Author: Du Xing <duxing2007@gmail.com>
Date:   Sun May 26 21:36:39 2013 +0800

    [simple]: Update nopage to fault
---
 simple/simple.c      | 35 +++++++++++++++++------------------
 simple/simple_load   |  0
 simple/simple_unload |  0
 3 files changed, 17 insertions(+), 18 deletions(-)
```

#### internal interface change

```diff
commit 54cb8821de07f2ffcd28c380ce9b93d5784b40d7
Author: Nick Piggin <npiggin@suse.de>
Date:   Thu Jul 19 01:46:59 2007 -0700

    mm: merge populate and nopage into fault (fixes nonlinear)
    
    Nonlinear mappings are (AFAIKS) simply a virtual memory concept that encodes
    the virtual address -> file offset differently from linear mappings.
    
    ->populate is a layering violation because the filesystem/pagecache code
    should need to know anything about the virtual memory mapping.  The hitch here
    is that the ->nopage handler didn't pass down enough information (ie.  pgoff).
     But it is more logical to pass pgoff rather than have the ->nopage function
    calculate it itself anyway (because that's a similar layering violation).
    
    Having the populate handler install the pte itself is likewise a nasty thing
    to be doing.
    
    This patch introduces a new fault handler that replaces ->nopage and
    ->populate and (later) ->nopfn.  Most of the old mechanism is still in place
    so there is a lot of duplication and nice cleanups that can be removed if
    everyone switches over.
    
    The rationale for doing this in the first place is that nonlinear mappings are
    subject to the pagefault vs invalidate/truncate race too, and it seemed stupid
    to duplicate the synchronisation logic rather than just consolidate the two.
    
    After this patch, MAP_NONBLOCK no longer sets up ptes for pages present in
    pagecache.  Seems like a fringe functionality anyway.
    
    NOPAGE_REFAULT is removed.  This should be implemented with ->fault, and no
    users have hit mainline yet.
    
    [akpm@linux-foundation.org: cleanup]
    [randy.dunlap@oracle.com: doc. fixes for readahead]
    [akpm@linux-foundation.org: build fix]
    Signed-off-by: Nick Piggin <npiggin@suse.de>
    Signed-off-by: Randy Dunlap <randy.dunlap@oracle.com>
    Cc: Mark Fasheh <mark.fasheh@oracle.com>
    Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
    Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
---
 Documentation/feature-removal-schedule.txt |  27 ++++++++++++++++++++++++
 Documentation/filesystems/Locking          |   2 ++
 fs/gfs2/ops_address.c                      |   2 +-
 fs/gfs2/ops_file.c                         |   2 +-
 fs/gfs2/ops_vm.c                           |  36 +++++++++++++++++---------------
 fs/ncpfs/mmap.c                            |  23 +++++++++++----------
 fs/ocfs2/aops.c                            |   2 +-
 fs/ocfs2/mmap.c                            |  17 +++++++--------
 fs/xfs/linux-2.6/xfs_file.c                |  23 ++++++++++-----------
 include/linux/mm.h                         |  41 +++++++++++++++++++++++++++++-------
 ipc/shm.c                                  |   9 ++++----
 mm/filemap.c                               |  94 ++++++++++++++++++++++++++++++++++++++++++++++++++--------------------------------
 mm/filemap_xip.c                           |  54 +++++++++++++++++++++++++++---------------------
 mm/fremap.c                                | 103 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++----------------------------
 mm/memory.c                                | 132 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-----------------------------------------
 mm/mmap.c                                  |   8 ++-----
 mm/nommu.c                                 |   3 +--
 mm/rmap.c                                  |   4 +++-
 mm/shmem.c                                 |  82 ++++++++++++++++++------------------------------------------------------
 mm/truncate.c                              |   2 +-
 20 files changed, 394 insertions(+), 272 deletions(-)

@@ -205,9 +225,15 @@ extern pgprot_t protection_map[16];
 struct vm_operations_struct {
        void (*open)(struct vm_area_struct * area);
        void (*close)(struct vm_area_struct * area);
-       struct page * (*nopage)(struct vm_area_struct * area, unsigned long address, int *type);
-       unsigned long (*nopfn)(struct vm_area_struct * area, unsigned long address);
-       int (*populate)(struct vm_area_struct * area, unsigned long address, unsigned long len, pgprot_t prot, unsigned long pgoff, int nonblock);
+       struct page *(*fault)(struct vm_area_struct *vma,
+                       struct fault_data *fdata);
+       struct page *(*nopage)(struct vm_area_struct *area,
+                       unsigned long address, int *type);
+       unsigned long (*nopfn)(struct vm_area_struct *area,
+                       unsigned long address);
+       int (*populate)(struct vm_area_struct *area, unsigned long address,
+                       unsigned long len, pgprot_t prot, unsigned long pgoff,
+                       int nonblock);
 
        /* notification that a previously read-only page is about to become
         * writable, if an error is returned it will cause a SIGBUS */
```

### pattern 2

* number of instance: 1

#### commit message

```
commit 4ab2bf773751355e0b2dccc4943e0acd805ad40f
Author: Du Xing <duxing2007@gmail.com>
Date:   Wed May 29 22:45:01 2013 +0800

    sbull: Fix compiling warning
    
    commits in linux-stable:
    commit 5a7bbad27a410350e64a2d7f5ec18fc73836c14f
    Author: Christoph Hellwig <hch@infradead.org>
    Date:   Mon Sep 12 12:12:01 2011 +0200
    
        block: remove support for bio remapping from ->make_request
---
 sbull/sbull.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/sbull/sbull.c b/sbull/sbull.c
index 1a7d4ce3894a..ffab3c280f63 100644
--- a/sbull/sbull.c
+++ b/sbull/sbull.c
@@ -222,14 +222,13 @@ static void sbull_full_request(struct request_queue *q)
 /*
  * The direct make request version.
  */
-static int sbull_make_request(struct request_queue *q, struct bio *bio)
+static void sbull_make_request(struct request_queue *q, struct bio *bio)
 {
        struct sbull_dev *dev = q->queuedata;
        int status;
 
        status = sbull_xfer_bio(dev, bio);
        bio_endio(bio, status);
-       return 0;
 }
```

#### internal interface change

```diff
diff --git a/include/linux/blkdev.h b/include/linux/blkdev.h
index 085f95414c7f..c712efdafc3f 100644
--- a/include/linux/blkdev.h
+++ b/include/linux/blkdev.h
@@ -193,7 +193,7 @@ struct request_pm_state
 #include <linux/elevator.h>
 
 typedef void (request_fn_proc) (struct request_queue *q);
-typedef int (make_request_fn) (struct request_queue *q, struct bio *bio);
+typedef void (make_request_fn) (struct request_queue *q, struct bio *bio);
 typedef int (prep_rq_fn) (struct request_queue *, struct request *);
 typedef void (unprep_rq_fn) (struct request_queue *, struct request *);
 
@@ -675,7 +675,7 @@ extern int scsi_cmd_ioctl(struct request_queue *, struct gendisk *, fmode_t,
 extern int sg_scsi_ioctl(struct request_queue *, struct gendisk *, fmode_t,
                         struct scsi_ioctl_command __user *);
 
-extern int blk_queue_bio(struct request_queue *q, struct bio *bio);
+extern void blk_queue_bio(struct request_queue *q, struct bio *bio);
 
 /*
  * A queue has just exitted congestion.  Note this in the global counter of
```

## 3.2 - 3.4

number of instance: 2

#### commit message

```diff
commit 2eecbdd7142123d7f8e3b5d57803fca97b6c9ef7
Author: Du Xing <duxing2007@gmail.com>
Date:   Fri May 31 21:44:53 2013 +0800

    remove asm/system.h
    
    root cause commits in linux-stable:
    commit 0195c00244dc2e9f522475868fa278c473ba7339
    Merge: f21ce8f 141124c
    Author: Linus Torvalds <torvalds@linux-foundation.org>
    Date:   Wed Mar 28 15:58:21 2012 -0700
    
        Merge tag 'split-asm_system_h-for-linus-20120328' of git://git.kernel.org/pub/scm/linux/kernel/git/dhowells/linux-asm_system
---
 scull/main.c       | 1 -
 skull/skull_init.c | 1 -
 2 files changed, 2 deletions(-)

diff --git a/scull/main.c b/scull/main.c
index dbb070490147..8a9bfcb5cc3e 100644
--- a/scull/main.c
+++ b/scull/main.c
@@ -28,7 +28,6 @@
 #include <linux/seq_file.h>
 #include <linux/cdev.h>
 
-#include <asm/system.h>                /* cli(), *_flags */
 #include <asm/uaccess.h>       /* copy_*_user */
 
 #include "scull.h"             /* local definitions */
diff --git a/skull/skull_init.c b/skull/skull_init.c
index 7de9ebe1f01d..c2890a1c7786 100644
--- a/skull/skull_init.c
+++ b/skull/skull_init.c
@@ -27,7 +27,6 @@
 #include <linux/kernel.h> /* printk */
 #include <linux/ioport.h>
 #include <linux/errno.h>
-#include <asm/system.h> /* cli(), *_flags */
 #include <linux/mm.h> /* vremap (2.0) */
 #include <asm/io.h> /* ioremap */
```

### internal interface change

```
 Merge tag 'split-asm_system_h-for-linus-20120328' of git://git.kernel…

….org/pub/scm/linux/kernel/git/dhowells/linux-asm_system

Pull "Disintegrate and delete asm/system.h" from David Howells:
 "Here are a bunch of patches to disintegrate asm/system.h into a set of
  separate bits to relieve the problem of circular inclusion
  dependencies.

  I've built all the working defconfigs from all the arches that I can
  and made sure that they don't break.

  The reason for these patches is that I recently encountered a circular
  dependency problem that came about when I produced some patches to
  optimise get_order() by rewriting it to use ilog2().

  This uses bitops - and on the SH arch asm/bitops.h drags in
  asm-generic/get_order.h by a circuituous route involving asm/system.h.

  The main difficulty seems to be asm/system.h.  It holds a number of
  low level bits with no/few dependencies that are commonly used (eg.
  memory barriers) and a number of bits with more dependencies that
  aren't used in many places (eg.  switch_to()).

  These patches break asm/system.h up into the following core pieces:

    (1) asm/barrier.h

        Move memory barriers here.  This already done for MIPS and Alpha.

    (2) asm/switch_to.h

        Move switch_to() and related stuff here.

    (3) asm/exec.h

        Move arch_align_stack() here.  Other process execution related bits
        could perhaps go here from asm/processor.h.

    (4) asm/cmpxchg.h

        Move xchg() and cmpxchg() here as they're full word atomic ops and
        frequently used by atomic_xchg() and atomic_cmpxchg().

    (5) asm/bug.h

        Move die() and related bits.

    (6) asm/auxvec.h

        Move AT_VECTOR_SIZE_ARCH here.

  Other arch headers are created as needed on a per-arch basis."

Fixed up some conflicts from other header file cleanups and moving code
around that has happened in the meantime, so David's testing is somewhat
weakened by that.  We'll find out anything that got broken and fix it..

* tag 'split-asm_system_h-for-linus-20120328' of git://git.kernel.org/pub/scm/linux/kernel/git/dhowells/linux-asm_system: (38 commits)
  Delete all instances of asm/system.h
  Remove all #inclusions of asm/system.h
  Add #includes needed to permit the removal of asm/system.h
  Move all declarations of free_initmem() to linux/mm.h
  Disintegrate asm/system.h for OpenRISC
  Split arch_align_stack() out from asm-generic/system.h
  Split the switch_to() wrapper out of asm-generic/system.h
  Move the asm-generic/system.h xchg() implementation to asm-generic/cmpxchg.h
  Create asm-generic/barrier.h
  Make asm-generic/cmpxchg.h #include asm-generic/cmpxchg-local.h
  Disintegrate asm/system.h for Xtensa
  Disintegrate asm/system.h for Unicore32 [based on ver #3, changed by gxt]
  Disintegrate asm/system.h for Tile
  Disintegrate asm/system.h for Sparc
  Disintegrate asm/system.h for SH
  Disintegrate asm/system.h for Score
  Disintegrate asm/system.h for S390
  Disintegrate asm/system.h for PowerPC
  Disintegrate asm/system.h for PA-RISC
  Disintegrate asm/system.h for MN10300
  ...
```

### pattern 2

number of instance: 1

#### commit message

```diff
commit 5af4ea607680b2fcda5b4b1ba3172002f004f3a5
Author: Du Xing <duxing2007@gmail.com>
Date:   Fri May 31 21:48:04 2013 +0800

    snull: replace NETIF_F_NO_CSUM to NETIF_F_HW_CSUM
    
    root cause commits in linux-stable:
    commit 34324dc2bf27c1773045fea63cb11f7e2a6ad2b9
    Author: Michał Mirosław <mirq-linux@rere.qmqm.pl>
    Date:   Tue Nov 15 15:29:55 2011 +0000
    
        net: remove NETIF_F_NO_CSUM feature bit
---
 snull/snull.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/snull/snull.c b/snull/snull.c
index d8a0d8e8282d..82b9935b677c 100644
--- a/snull/snull.c
+++ b/snull/snull.c
@@ -679,7 +679,7 @@ void snull_init(struct net_device *dev)
 
        /* keep the default flags, just add NOARP */
        dev->flags           |= IFF_NOARP;
-       dev->features        |= NETIF_F_NO_CSUM;
+       dev->features        |= NETIF_F_HW_CSUM;
        dev->netdev_ops = &snull_netdev_ops;
        dev->header_ops = &snull_header_ops;
```

#### internal interface change

```diff
commit 34324dc2bf27c1773045fea63cb11f7e2a6ad2b9
Author: Michał Mirosław <mirq-linux@rere.qmqm.pl>
Date:   Tue Nov 15 15:29:55 2011 +0000

    net: remove NETIF_F_NO_CSUM feature bit
    
    Only distinct use is checking if NETIF_F_NOCACHE_COPY should be
    enabled by default. The check heuristics is altered a bit here,
    so it hits other people than before. The default shouldn't be
    trusted for performance-critical cases anyway.
    
    For all other uses NETIF_F_NO_CSUM is equivalent to NETIF_F_HW_CSUM.
    
    Signed-off-by: Michał Mirosław <mirq-linux@rere.qmqm.pl>
    Signed-off-by: David S. Miller <davem@davemloft.net>
---
 drivers/ieee802154/fakehard.c   |  2 +-
 drivers/misc/sgi-xp/xpnet.c     |  2 +-
 drivers/net/bonding/bond_main.c |  2 +-
 drivers/net/can/dev.c           |  2 +-
 drivers/net/can/slcan.c         |  2 +-
 drivers/net/dummy.c             |  2 +-
 drivers/net/ifb.c               |  2 +-
 drivers/net/loopback.c          |  2 +-
 drivers/net/veth.c              |  2 +-
 include/linux/netdev_features.h |  5 ++---
 include/linux/skbuff.h          |  1 -
 net/bridge/br_device.c          |  4 ++--
 net/core/dev.c                  | 21 ++++++---------------
 net/core/ethtool.c              |  1 -
 14 files changed, 19 insertions(+), 31 deletions(-)

diff --git a/drivers/ieee802154/fakehard.c b/drivers/ieee802154/fakehard.c
index eb0e2ccc79ae..73d453159408 100644
--- a/drivers/ieee802154/fakehard.c
+++ b/drivers/ieee802154/fakehard.c
@@ -343,7 +343,7 @@ static void ieee802154_fake_setup(struct net_device *dev)
 {
        dev->addr_len           = IEEE802154_ADDR_LEN;
        memset(dev->broadcast, 0xff, IEEE802154_ADDR_LEN);
-       dev->features           = NETIF_F_NO_CSUM;
+       dev->features           = NETIF_F_HW_CSUM;
        dev->needed_tailroom    = 2; /* FCS */
        dev->mtu                = 127;
        dev->tx_queue_len       = 10;
```

## 3.4 - 3.10

### pattern 1

number of instance: 2

#### commit message

```diff
commit d4904488ba639ceb389f07ddda980c6ee9d4e052
Author: Du Xing <duxing2007@gmail.com>
Date:   Sat Aug 24 12:55:33 2013 +0800

    procfs: replace create_proc_entry with proc_create
    
    root cause commits in linux-stable:
    commit 80e928f7ebb958f4d79d4099d1c5c0a015a23b93
    Author: David Howells <dhowells@redhat.com>
    Date:   Thu Apr 4 17:02:03 2013 +0100
    
        proc: Kill create_proc_entry()
    
        Kill create_proc_entry() in favour of create_proc_read_entry(), proc_create()
        and proc_create_data().
---
 misc-modules/seq.c | 6 +++---
 scull/main.c       | 7 ++++---
 2 files changed, 7 insertions(+), 6 deletions(-)

diff --git a/misc-modules/seq.c b/misc-modules/seq.c
index 59026a5878e3..1dc1cfd1b4b8 100644
--- a/misc-modules/seq.c
+++ b/misc-modules/seq.c
@@ -94,9 +94,9 @@ static int ct_init(void)
 {
        struct proc_dir_entry *entry;
 
-       entry = create_proc_entry("sequence", 0, NULL);
-       if (entry)
-               entry->proc_fops = &ct_file_ops;
+       entry = proc_create("sequence", 0, NULL, &ct_file_ops);
+       if (!entry)
+               return -ENOMEM;
        return 0;
 }

diff --git a/scull/main.c b/scull/main.c
index 8a9bfcb5cc3e..74d5dcefd84f 100644
--- a/scull/main.c
+++ b/scull/main.c
@@ -210,9 +210,10 @@ static void scull_create_proc(void)
        create_proc_read_entry("scullmem", 0 /* default mode */,
                        NULL /* parent dir */, scull_read_procmem,
                        NULL /* client data */);
-       entry = create_proc_entry("scullseq", 0, NULL);
-       if (entry)
-               entry->proc_fops = &scull_proc_ops;
+       entry = proc_create("scullseq", 0, NULL, &scull_proc_ops);
+       if (!entry) {
+               printk(KERN_WARNING "proc_create scullseq failed\n");
+    }
 }
 
 static void scull_remove_proc(void)
```

#### internal interface change

```diff
commit 80e928f7ebb958f4d79d4099d1c5c0a015a23b93
Author: David Howells <dhowells@redhat.com>
Date:   Thu Apr 4 17:02:03 2013 +0100

    proc: Kill create_proc_entry()
    
    Kill create_proc_entry() in favour of create_proc_read_entry(), proc_create()
    and proc_create_data().
    
    Signed-off-by: David Howells <dhowells@redhat.com>
---
 fs/proc/generic.c       |  9 ++++++---
 include/linux/proc_fs.h | 17 ++---------------
 2 files changed, 8 insertions(+), 18 deletions(-)

diff --git a/include/linux/proc_fs.h b/include/linux/proc_fs.h
index 5ae73e273e7e..bcc0e10ef1df 100644
--- a/include/linux/proc_fs.h
+++ b/include/linux/proc_fs.h
@@ -109,8 +109,6 @@ extern void proc_root_init(void);
 
 void proc_flush_task(struct task_struct *task);
 
-extern struct proc_dir_entry *create_proc_entry(const char *name, umode_t mode,
-                                               struct proc_dir_entry *parent);
 struct proc_dir_entry *proc_create_data(const char *name, umode_t mode,
                                struct proc_dir_entry *parent,
                                const struct file_operations *proc_fops,
@@ -164,17 +162,9 @@ static inline struct proc_dir_entry *proc_create(const char *name, umode_t mode,
        return proc_create_data(name, mode, parent, proc_fops, NULL);
 }
 
-static inline struct proc_dir_entry *create_proc_read_entry(const char *name,
+extern struct proc_dir_entry *create_proc_read_entry(const char *name,
        umode_t mode, struct proc_dir_entry *base, 
-       read_proc_t *read_proc, void * data)
-{
-       struct proc_dir_entry *res=create_proc_entry(name,mode,base);
-       if (res) {
-               res->read_proc=read_proc;
-               res->data=data;
-       }
-       return res;
-}
+       read_proc_t *read_proc, void *data);
  
 extern struct proc_dir_entry *proc_net_mkdir(struct net *net, const char *name,
        struct proc_dir_entry *parent);
@@ -190,9 +180,6 @@ static inline void proc_flush_task(struct task_struct *task)
 {
 }
 
-static inline struct proc_dir_entry *create_proc_entry(const char *name,
-       umode_t mode, struct proc_dir_entry *parent) { return NULL; }
-
 #define proc_create(name, mode, parent, fops)  ({ (void)(mode), NULL; })
 
 static inline struct proc_dir_entry *proc_create_data(const char *name,
```

### pattern 2

number of instance: 17

#### commit message

```diff
commit a4cfbfb9012445387d3aa0ca0880d8506c9af401
Author: Du Xing <duxing2007@gmail.com>
Date:   Sat Aug 24 17:29:04 2013 +0800

    procfs: remove create_proc_read_entry
    
    roott cause commits in linux-stable:
    commit d0206fb55540cfdc3a2634ffdafc6f1d86cf1f15
    Author: David Howells <dhowells@redhat.com>
    Date:   Tue Apr 9 21:11:47 2013 +0100
    
        procfs: Mark create_proc_read_entry deprecated
    
        Mark create_proc_read_entry deprecated.  proc_create[_data]() should be used
        instead.
---
 misc-modules/jiq.c | 126 ++++++++++++++++++++++++++++++++++++++++++++--------------------------------------------------
 misc-modules/jit.c | 188 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++---------------------------------------------------------
 scull/main.c       |  41 +++++++++++++++++++------------
 scull/pipe.c       |  59 ++++++++++++++++++++------------------------
 scullc/main.c      |  58 ++++++++++++++++++++-----------------------
 sculld/main.c      |  58 ++++++++++++++++++++-----------------------
 scullp/main.c      |  58 ++++++++++++++++++++-----------------------
 scullv/main.c      |  58 ++++++++++++++++++++-----------------------
 8 files changed, 328 insertions(+), 318 deletions(-)

@@ -253,10 +245,10 @@ static int jiq_init(void)
 	INIT_DELAYED_WORK(&jiq_data.jiq_work, jiq_print_wq);
 	INIT_WORK(&jiq_data.work, jiq_print_work);
 
-	create_proc_read_entry("jiqwq", 0, NULL, jiq_read_wq, NULL);
-	create_proc_read_entry("jiqwqdelay", 0, NULL, jiq_read_wq_delayed, NULL);
-	create_proc_read_entry("jitimer", 0, NULL, jiq_read_run_timer, NULL);
-	create_proc_read_entry("jiqtasklet", 0, NULL, jiq_read_tasklet, NULL);
+	proc_create("jiqwq", 0, NULL, &jiq_read_wq_proc_fops);
+	proc_create("jiqwqdelay", 0, NULL, &jiq_read_wq_delayed_proc_fops);
+	proc_create("jitimer", 0, NULL, &jiq_read_run_timer_proc_fops);
+	proc_create("jiqtasklet", 0, NULL, &jiq_read_tasklet_proc_fops);
 
 	return 0; /* succeed */
 }

@@ -263,10 +299,10 @@ int __init jit_init(void)
 {
-	create_proc_read_entry("currentime", 0, NULL, jit_currentime, NULL);
-	create_proc_read_entry("jitbusy", 0, NULL, jit_fn, (void *)JIT_BUSY);
-	create_proc_read_entry("jitsched",0, NULL, jit_fn, (void *)JIT_SCHED);
-	create_proc_read_entry("jitqueue",0, NULL, jit_fn, (void *)JIT_QUEUE);
-	create_proc_read_entry("jitschedto", 0, NULL, jit_fn, (void *)JIT_SCHEDTO);
-
-	create_proc_read_entry("jitimer", 0, NULL, jit_timer, NULL);
-	create_proc_read_entry("jitasklet", 0, NULL, jit_tasklet, NULL);
-	create_proc_read_entry("jitasklethi", 0, NULL, jit_tasklet, (void *)1);
+	proc_create("currentime", 0, NULL, &jit_currentime_proc_fops);
+	proc_create_data("jitbusy", 0, NULL, &jit_fn_proc_fops, (void *)JIT_BUSY);
+	proc_create_data("jitsched",0, NULL, &jit_fn_proc_fops, (void *)JIT_SCHED);
+	proc_create_data("jitqueue",0, NULL, &jit_fn_proc_fops, (void *)JIT_QUEUE);
+	proc_create_data("jitschedto", 0, NULL, &jit_fn_proc_fops, (void *)JIT_SCHEDTO);
+
+	proc_create("jitimer", 0, NULL, &jit_timer_proc_fops);
+	proc_create("jitasklet", 0, NULL, &jit_tasklet_proc_fops);
+	proc_create_data("jitasklethi", 0, NULL, &jit_tasklet_proc_fops, (void *)1);
 
 	return 0; /* success */
 }

@@ -367,7 +362,7 @@ int scull_p_init(dev_t firstdev)
 		scull_p_setup_cdev(scull_p_devices + i, i);
 	}
 #ifdef SCULL_DEBUG
-	create_proc_read_entry("scullpipe", 0, NULL, scull_read_p_mem, NULL);
+	proc_create("scullpipe", 0, NULL, &scull_read_p_mem_proc_fops);
 #endif
 	return scull_p_nr_devs;
 }

@@ -631,7 +625,7 @@ int scullc_init(void)
 	}
 
 #ifdef SCULLC_USE_PROC /* only when available */
-	create_proc_read_entry("scullcmem", 0, NULL, scullc_read_procmem, NULL);
+	proc_create("scullcmem", 0, NULL, &scullc_read_mem_proc_fops);
 #endif
 	return 0; /* succeed */

@@ -665,7 +659,7 @@ int sculld_init(void)
 
 
 #ifdef SCULLD_USE_PROC /* only when available */
-	create_proc_read_entry("sculldmem", 0, NULL, sculld_read_procmem, NULL);
+	proc_create("sculldmem", 0, NULL, &sculld_read_mem_proc_fops);
 #endif
 	return 0; /* succeed */

@@ -632,7 +626,7 @@ int scullp_init(void)
 
 
 #ifdef SCULLP_USE_PROC /* only when available */
-	create_proc_read_entry("scullpmem", 0, NULL, scullp_read_procmem, NULL);
+	proc_create("scullpmem", 0, NULL, &scullp_read_mem_proc_fops);
 #endif
 	return 0; /* succeed */

@@ -631,7 +625,7 @@ int scullv_init(void)
 
 
 #ifdef SCULLV_USE_PROC /* only when available */
-	create_proc_read_entry("scullvmem", 0, NULL, scullv_read_procmem, NULL);
+	proc_create("scullvmem", 0, NULL, &scullv_read_mem_proc_fops);
 #endif
 	return 0; /* succeed */
```

#### internal interface change

```diff
commit d0206fb55540cfdc3a2634ffdafc6f1d86cf1f15
Author: David Howells <dhowells@redhat.com>
Date:   Tue Apr 9 21:11:47 2013 +0100

    procfs: Mark create_proc_read_entry deprecated
    
    Mark create_proc_read_entry deprecated.  proc_create[_data]() should be used
    instead.
    
    Signed-off-by: David Howells <dhowells@redhat.com>
    Signed-off-by: Al Viro <viro@zeniv.linux.org.uk>
---
 include/linux/proc_fs.h | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/include/linux/proc_fs.h b/include/linux/proc_fs.h
index 2781e498f709..8175b49396a6 100644
--- a/include/linux/proc_fs.h
+++ b/include/linux/proc_fs.h
@@ -155,7 +155,8 @@ static inline struct proc_dir_entry *proc_create(const char *name, umode_t mode,
        return proc_create_data(name, mode, parent, proc_fops, NULL);
 }
 
-extern struct proc_dir_entry *create_proc_read_entry(const char *name,
+extern __deprecated
+struct proc_dir_entry *create_proc_read_entry(const char *name,
        umode_t mode, struct proc_dir_entry *base, 
        read_proc_t *read_proc, void *data);
  
@@ -191,7 +192,8 @@ static inline struct proc_dir_entry *proc_mkdir(const char *name,
 static inline struct proc_dir_entry *proc_mkdir_mode(const char *name,
        umode_t mode, struct proc_dir_entry *parent) { return NULL; }
 
-static inline struct proc_dir_entry *create_proc_read_entry(const char *name,
+static inline __deprecated
+struct proc_dir_entry *create_proc_read_entry(const char *name,
        umode_t mode, struct proc_dir_entry *base, 
        read_proc_t *read_proc, void * data) { return NULL; }
```

### pattern 3

number of instance: 5

#### commit message

```diff
commit be51d91c0509e1f0f47244c07a28a33ce61feebb
Author: Du Xing <duxing2007@gmail.com>
Date:   Sat Aug 24 22:56:52 2013 +0800

    mm: kill vma flag VM_RESERVED and mm->reserved_vm counter
    
    root cause commits in linux-stable:
    commit 314e51b9851b4f4e8ab302243ff5a6fc6147f379
    Author: Konstantin Khlebnikov <khlebnikov@openvz.org>
    Date:   Mon Oct 8 16:29:02 2012 -0700
    
        mm: kill vma flag VM_RESERVED and mm->reserved_vm counter
    
        A long time ago, in v2.4, VM_RESERVED kept swapout process off VMA,
        currently it lost original meaning but still has some effects:
    
         | effect                 | alternative flags
        -+------------------------+---------------------------------------------
        1| account as reserved_vm | VM_IO
        2| skip in core dump      | VM_IO, VM_DONTDUMP
        3| do not merge or expand | VM_IO, VM_DONTEXPAND, VM_HUGETLB, VM_PFNMAP
        4| do not mlock           | VM_IO, VM_DONTEXPAND, VM_HUGETLB, VM_PFNMAP
    
        This patch removes reserved_vm counter from mm_struct.  Seems like nobody
        cares about it, it does not exported into userspace directly, it only
        reduces total_vm showed in proc.
    
        Thus VM_RESERVED can be replaced with VM_IO or pair VM_DONTEXPAND | VM_DONTDUMP.
    
        remap_pfn_range() and io_remap_pfn_range() set VM_IO|VM_DONTEXPAND|VM_DONTDUMP.
        remap_vmalloc_range() set VM_DONTEXPAND | VM_DONTDUMP.
---
 scullc/mmap.c   | 2 +-
 sculld/mmap.c   | 2 +-
 scullp/mmap.c   | 2 +-
 scullv/mmap.c   | 2 +-
 simple/simple.c | 2 +-
 5 files changed, 5 insertions(+), 5 deletions(-)
```

#### internal interface change

```diff
 mm: kill vma flag VM_RESERVED and mm->reserved_vm counter

A long time ago, in v2.4, VM_RESERVED kept swapout process off VMA,
currently it lost original meaning but still has some effects:

 | effect                 | alternative flags
-+------------------------+---------------------------------------------
1| account as reserved_vm | VM_IO
2| skip in core dump      | VM_IO, VM_DONTDUMP
3| do not merge or expand | VM_IO, VM_DONTEXPAND, VM_HUGETLB, VM_PFNMAP
4| do not mlock           | VM_IO, VM_DONTEXPAND, VM_HUGETLB, VM_PFNMAP

This patch removes reserved_vm counter from mm_struct.  Seems like nobody
cares about it, it does not exported into userspace directly, it only
reduces total_vm showed in proc.

Thus VM_RESERVED can be replaced with VM_IO or pair VM_DONTEXPAND | VM_DONTDUMP.

remap_pfn_range() and io_remap_pfn_range() set VM_IO|VM_DONTEXPAND|VM_DONTDUMP.
remap_vmalloc_range() set VM_DONTEXPAND | VM_DONTDUMP.

[akpm@linux-foundation.org: drivers/vfio/pci/vfio_pci.c fixup]
Signed-off-by: Konstantin Khlebnikov <khlebnikov@openvz.org>
Cc: Alexander Viro <viro@zeniv.linux.org.uk>
Cc: Carsten Otte <cotte@de.ibm.com>
Cc: Chris Metcalf <cmetcalf@tilera.com>
Cc: Cyrill Gorcunov <gorcunov@openvz.org>
Cc: Eric Paris <eparis@redhat.com>
Cc: H. Peter Anvin <hpa@zytor.com>
Cc: Hugh Dickins <hughd@google.com>
Cc: Ingo Molnar <mingo@redhat.com>
Cc: James Morris <james.l.morris@oracle.com>
Cc: Jason Baron <jbaron@redhat.com>
Cc: Kentaro Takeda <takedakn@nttdata.co.jp>
Cc: Matt Helsley <matthltc@us.ibm.com>
Cc: Nick Piggin <npiggin@kernel.dk>
Cc: Oleg Nesterov <oleg@redhat.com>
Cc: Peter Zijlstra <a.p.zijlstra@chello.nl>
Cc: Robert Richter <robert.richter@amd.com>
Cc: Suresh Siddha <suresh.b.siddha@intel.com>
Cc: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
Cc: Venkatesh Pallipadi <venki@google.com>
Acked-by: Linus Torvalds <torvalds@linux-foundation.org>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
```

### pattern 4

number of instance: 10

contains marco string concatenation

* Is this a pattern?
```diff
-                       buffer_size = le16_to_cpu(endpoint->wMaxPacketSize);
+                       buffer_size = usb_endpoint_maxp(endpoint);
```

```c
/**
 * usb_endpoint_maxp - get endpoint's max packet size
 * @epd: endpoint to be checked
 *
 * Returns @epd's max packet
 */
static inline int usb_endpoint_maxp(const struct usb_endpoint_descriptor *epd)
{
	return __le16_to_cpu(epd->wMaxPacketSize);
}
```

#### commit message

```
commit 916b5f4bdbba66b018ce308945ce85c9545704f0
Author: Du Xing <duxing2007@gmail.com>
Date:   Sun Sep 8 21:16:47 2013 +0800

    usb-skeletion.c: update to linux-stable v3.10.11
    
    And move test with g_zero changes into a split patch file
---
 usb/test_with_g_zero.patch | 27 +++++++++++++++++++++++++++
 usb/usb-skeleton.c         | 95 ++++++++++++++++++++++++++++++-----------------------------------------------------------------
 2 files changed, 57 insertions(+), 65 deletions(-)

@@ -97,8 +92,8 @@ static int skel_open(struct inode *inode, struct file *file)
 
        interface = usb_find_interface(&skel_driver, subminor);
        if (!interface) {
-               err("%s - error, can't find device for minor %d",
-                    __func__, subminor);
+               pr_err("%s - error, can't find device for minor %d\n",
+                       __func__, subminor);
                retval = -ENODEV;
                goto exit;
        }

@@ -196,8 +173,9 @@ static void skel_read_bulk_callback(struct urb *urb)
                if (!(urb->status == -ENOENT ||
                    urb->status == -ECONNRESET ||
                    urb->status == -ESHUTDOWN))
-                       err("%s - nonzero write bulk status received: %d",
-                           __func__, urb->status);
+                       dev_err(&dev->interface->dev,
+                               "%s - nonzero write bulk status received: %d\n",
+                               __func__, urb->status);
 
                dev->errors = urb->status;
        } else {

@@ -234,9 +212,9 @@ static int skel_do_read_io(struct usb_skel *dev, size_t count)
        /* do it */
        rv = usb_submit_urb(dev->bulk_in_urb, GFP_KERNEL);
        if (rv < 0) {
-               err("%s - failed submitting read urb, error %d",
+               dev_err(&dev->interface->dev,
+                       "%s - failed submitting read urb, error %d\n",
                        __func__, rv);
-               dev->bulk_in_filled = 0;
                rv = (rv == -ENOMEM) ? rv : -EIO;
                spin_lock_irq(&dev->err_lock);
                dev->ongoing_read = 0;

@@ -367,8 +345,9 @@ static void skel_write_bulk_callback(struct urb *urb)
                if (!(urb->status == -ENOENT ||
                    urb->status == -ECONNRESET ||
                    urb->status == -ESHUTDOWN))
-                       err("%s - nonzero write bulk status received: %d",
-                           __func__, urb->status);
+                       dev_err(&dev->interface->dev,
+                               "%s - nonzero write bulk status received: %d\n",
+                               __func__, urb->status);
 
                spin_lock(&dev->err_lock);
                dev->errors = urb->status;

@@ -462,8 +441,9 @@ static ssize_t skel_write(struct file *file, const char *user_buffer,
        retval = usb_submit_urb(urb, GFP_KERNEL);
        mutex_unlock(&dev->io_mutex);
        if (retval) {
-               err("%s - failed submitting write urb, error %d", __func__,
-                   retval);
+               dev_err(&dev->interface->dev,
+                       "%s - failed submitting write urb, error %d\n",
+                       __func__, retval);
                goto error_unanchor;
        }
 
@@ -522,7 +502,7 @@ static int skel_probe(struct usb_interface *interface,
        /* allocate memory for our device state and initialize it */
        dev = kzalloc(sizeof(*dev), GFP_KERNEL);
        if (!dev) {
-               err("Out of memory");
+               dev_err(&interface->dev, "Out of memory\n");
                goto error;
        }
        kref_init(&dev->kref);

@@ -544,17 +524,19 @@ static int skel_probe(struct usb_interface *interface,
                if (!dev->bulk_in_endpointAddr &&
                    usb_endpoint_is_bulk_in(endpoint)) {
                        /* we found a bulk in endpoint */
-                       buffer_size = le16_to_cpu(endpoint->wMaxPacketSize);
+                       buffer_size = usb_endpoint_maxp(endpoint);
                        dev->bulk_in_size = buffer_size;
                        dev->bulk_in_endpointAddr = endpoint->bEndpointAddress;
                        dev->bulk_in_buffer = kmalloc(buffer_size, GFP_KERNEL);
                        if (!dev->bulk_in_buffer) {
-                               err("Could not allocate bulk_in_buffer");
+                               dev_err(&interface->dev,
+                                       "Could not allocate bulk_in_buffer\n");
                                goto error;
                        }
                        dev->bulk_in_urb = usb_alloc_urb(0, GFP_KERNEL);
                        if (!dev->bulk_in_urb) {
-                               err("Could not allocate bulk_in_urb");
+                               dev_err(&interface->dev,
+                                       "Could not allocate bulk_in_urb\n");
                                goto error;
                        }
                }
@@ -566,7 +548,8 @@ static int skel_probe(struct usb_interface *interface,
                }
        }
        if (!(dev->bulk_in_endpointAddr && dev->bulk_out_endpointAddr)) {
-               err("Could not find both bulk-in and bulk-out endpoints");
+               dev_err(&interface->dev,
+                       "Could not find both bulk-in and bulk-out endpoints\n");
                goto error;
        }

@@ -577,14 +560,15 @@ static int skel_probe(struct usb_interface *interface,
        retval = usb_register_dev(interface, &skel_class);
        if (retval) {
                /* something prevented us from registering this driver */
-               err("Not able to get a minor for this device.");
+               dev_err(&interface->dev,
+                       "Not able to get a minor for this device.\n");
                usb_set_intfdata(interface, NULL);
                goto error;
        }
```

### pattern 5

pattern 5
number of instance: 2
```
-	iflag = tty->termios->c_iflag;
-	cflag = tty->termios->c_cflag;
+	iflag = tty->termios.c_iflag;
+	cflag = tty->termios.c_cflag;
```

pattern 6
number of instance: 3
```
-	struct tty_struct *tty;
+	struct tty_port *port;
```

#### commit message

```diff
commit 698d8b7fc8b50b31bf71612de8ce1f34ecd9a1e1
Author: Du Xing <duxing2007@gmail.com>
Date:   Sun Sep 8 20:54:06 2013 +0800

    tty: fix tty
    
    this commit contain below changes:
     - tiny_write return count of char instead of -EINVAL
     - call put_tty_driver in tiny_exit to free resources allocated by tty_register_driver
     - move the termios object into the tty
                root cause commits in linux-stable:
                commit adc8d746caa67fff4b53ba3e5163a6cbacc3b523
                Author: Alan Cox <alan@linux.intel.com>
                Date:   Sat Jul 14 15:31:47 2012 +0100
    
                        tty: move the termios object into the tty
    
                        This will let us sort out a whole pile of tty related races. The
                        alternative would be to keep points and refcount the termios objects.
                        However
                        1. They are tiny anyway
                        2. Many devices don't use the stored copies
                        3. We can remove a pty special case
     - move tty buffers to tty_port
                root cause commits in linux-stable:
                commit ecbbfd44a08fa80e0d664814efd4c187721b85f6
                Author: Jiri Slaby <jslaby@suse.cz>
                Date:   Thu Oct 18 22:26:47 2012 +0200
    
                        TTY: move tty buffers to tty_port
    
                        So this is it. The big step why we did all the work over the past
                        kernel releases. Now everything is prepared, so nothing protects us
                        from doing that big step.
    
                                           |  |            \  \ nnnn/^l      |  |
                                           |  |             \  /     /       |  |
                                           |  '-,.__   =>    \/   ,-`    =>  |  '-,.__
                                           | O __.´´)        (  .`           | O __.´´)
                                                ~~~   ~~          ``              ~~~   ~~
                        The buffers are now in the tty_port structure and we can start
                        teaching the buffer helpers (insert char/string, flip etc.) to use
                        tty_port instead of tty_struct all around.
```

## 3.10 - 3.12

### pattern 1-2

pattern 1
number of instance: 1

pattern 2
number of instance: 1

#### commit message

```diff
commit 8068cc3578de999aaa605c6ece0424891bf5913b
Author: Du Xing <duxing2007@gmail.com>
Date:   Wed Apr 9 21:29:11 2014 +0800

    sbull: fix compiling errors
    
    root cause commits in linux-stable:
    commit 0eb5afb3bae69a18bb4a8dbcbd361c4403fb54cd
    Author: Zhao Hongjiang <zhaohongjiang@huawei.com>
    Date:   Mon Jul 8 15:22:50 2013 +0800
    
        xtensa: remove the second argument of __bio_kmap_atomic()
    
        kmap_atomic allows only one argument now, just remove the unused 'kmtype'.
    
    commit 3e4d3af501cccdc8a8cca41bdbe57d54ad7e7e73
    Author: Peter Zijlstra <a.p.zijlstra@chello.nl>
    Date:   Tue Oct 26 14:21:51 2010 -0700
    
        mm: stack based kmap_atomic()
    
        Keep the current interface but ignore the KM_type and use a stack based
        approach.
    
        The advantage is that we get rid of crappy code like:
    
                #define __KM_PTE                        \
                        (in_nmi() ? KM_NMI_PTE :        \
                         in_irq() ? KM_IRQ_PTE :        \
                         KM_PTE0)
    
        and in general can stop worrying about what context we're in and what kmap
        slots might be appropriate for that.
    
        The downside is that FRV kmap_atomic() gets more expensive.
    
        For now we use a CPP trick suggested by Andrew:
    
          #define kmap_atomic(page, args...) __kmap_atomic(page)
    
        to avoid having to touch all kmap_atomic() users in a single patch.

        [ not compiled on:
          - mn10300: the arch doesn't actually build with highmem to begin with ]
    
    commit db2a144bedd58b3dcf19950c2f476c58c9f39d18
    Author: Al Viro <viro@zeniv.linux.org.uk>
    Date:   Sun May 5 21:52:57 2013 -0400
    
        block_device_operations->release() should return void
    
        The value passed is 0 in all but "it can never happen" cases (and those
        only in a couple of drivers) *and* it would've been lost on the way
        out anyway, even if something tried to pass something meaningful.
        Just don't bother.
---
 sbull/sbull.c | 25 +++----------------------
 1 file changed, 3 insertions(+), 22 deletions(-)

diff --git a/sbull/sbull.c b/sbull/sbull.c
index ffab3c280f63..d39074c333dd 100644
--- a/sbull/sbull.c
+++ b/sbull/sbull.c
@@ -147,33 +147,15 @@ static int sbull_xfer_bio(struct sbull_dev *dev, struct bio *bio)
 
        /* Do each segment independently. */
        bio_for_each_segment(bvec, bio, i) {
-               char *buffer = __bio_kmap_atomic(bio, i, KM_USER0);
+               char *buffer = __bio_kmap_atomic(bio, i);
                sbull_transfer(dev, sector,bytes_to_sectors_checked(bio_cur_bytes(bio)),
                                buffer, bio_data_dir(bio) == WRITE);
                sector += (bytes_to_sectors_checked(bio_cur_bytes(bio)));
-               __bio_kunmap_atomic(bio, KM_USER0);
+               __bio_kunmap_atomic(bio);
        }
        return 0; /* Always "succeed" */
 }
```

### pattern 3

number of instance: 2

#### commit message

```diff
commit bd8d0d22cbed82efd5849995e08f35e4163efd4d
Author: Du Xing <duxing2007@gmail.com>
Date:   Wed Apr 9 21:34:20 2014 +0800

    scull: fix compiling errors when CONFIG_ UIDGID_STRICT_TYPE_CHECKS=y
---
 scull/access.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/scull/access.c b/scull/access.c
index b13ba77761e4..a17cfe407297 100644
--- a/scull/access.c
+++ b/scull/access.c
@@ -95,7 +95,7 @@ struct file_operations scull_sngl_fops = {
 
 static struct scull_dev scull_u_device;
 static int scull_u_count;      /* initialized to 0 by default */
-static uid_t scull_u_owner;    /* initialized to 0 by default */
+static kuid_t scull_u_owner;   /* initialized to 0 by default */
 static DEFINE_SPINLOCK(scull_u_lock);
 
 static int scull_u_open(struct inode *inode, struct file *filp)
@@ -104,8 +104,8 @@ static int scull_u_open(struct inode *inode, struct file *filp)
 
        spin_lock(&scull_u_lock);
        if (scull_u_count && 
-                       (scull_u_owner != current_uid()) &&  /* allow user */
-                       (scull_u_owner != current_euid()) && /* allow whoever did su */
+                       (!uid_eq(scull_u_owner , current_uid()) ) &&  /* allow user */
+                       (!uid_eq(scull_u_owner , current_euid()) ) && /* allow whoever did su */
                        !capable(CAP_DAC_OVERRIDE)) { /* still allow root */
                spin_unlock(&scull_u_lock);
                return -EBUSY;   /* -EPERM would confuse the user */
@@ -156,15 +156,15 @@ struct file_operations scull_user_fops = {
 
 static struct scull_dev scull_w_device;
 static int scull_w_count;      /* initialized to 0 by default */
-static uid_t scull_w_owner;    /* initialized to 0 by default */
+static kuid_t scull_w_owner;   /* initialized to 0 by default */
 static DECLARE_WAIT_QUEUE_HEAD(scull_w_wait);
 static DEFINE_SPINLOCK(scull_w_lock);
 
 static inline int scull_w_available(void)
 {
        return scull_w_count == 0 ||
-               scull_w_owner == current_uid() ||
-               scull_w_owner == current_euid() ||
+               uid_eq(scull_w_owner , current_uid()) ||
+               uid_eq(scull_w_owner , current_euid()) ||
                capable(CAP_DAC_OVERRIDE);
 }
```

## 3.12 - 3.14

### pattern 1

pattern 1
number of instance: 1
```
-	struct bio_vec *bvec;
+	struct bio_vec bvec;
```

pattern 2
number of instance: 1
```
-	int i;
+	struct bvec_iter iter;
```

pattern 3
number of instance: 1
for_each marco, can't be inferred
```
-	bio_for_each_segment(bvec, bio, i) {
-		char *buffer = __bio_kmap_atomic(bio, i);
+	bio_for_each_segment(bvec, bio, iter) {
+		char *buffer = __bio_kmap_atomic(bio, iter);
```

#### commit message

```diff
commit df1f53b4e69c3d00e9317c52121d37f16b1a6fea
Author: Du Xing <duxing2007@gmail.com>
Date:   Sun Sep 7 16:52:28 2014 +0800

    sbull: fix compiling errors
    
    root cause commits in linux-stable:
    commit 7988613b0e5b2638caf6cd493cc78e9595eba19c
    Author: Kent Overstreet <kmo@daterainc.com>
    Date:   Sat Nov 23 17:19:00 2013 -0800
    
        block: Convert bio_for_each_segment() to bvec_iter
    
        More prep work for immutable biovecs - with immutable bvecs drivers
        won't be able to use the biovec directly, they'll need to use helpers
        that take into account bio->bi_iter.bi_bvec_done.
    
        This updates callers for the new usage without changing the
        implementation yet.
    
    commit 4550dd6c6b062fc5e5b647296d55da22616123c3
    Author: Kent Overstreet <kmo@daterainc.com>
    Date:   Wed Aug 7 14:26:21 2013 -0700
    
        block: Immutable bio vecs
    
        This adds a mechanism by which we can advance a bio by an arbitrary
        number of bytes without modifying the biovec: bio->bi_iter.bi_bvec_done
        indicates the number of bytes completed in the current bvec.
    
        Various driver code still needs to be updated to not refer to the bvec
        directly before we can use this for interesting things, like efficient
        bio splitting.
    
    commit 4f024f3797c43cb4b73cd2c50cec728842d0e49e
    Author: Kent Overstreet <kmo@daterainc.com>
    Date:   Fri Oct 11 15:44:27 2013 -0700
    
        block: Abstract out bvec iterator
    
        Immutable biovecs are going to require an explicit iterator. To
        implement immutable bvecs, a later patch is going to add a bi_bvec_done
        member to this struct; for now, this patch effectively just renames
        things.
---
 sbull/sbull.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/sbull/sbull.c b/sbull/sbull.c
index c3b7d4c12c43..dbb0b8a5ca2d 100644
--- a/sbull/sbull.c
+++ b/sbull/sbull.c
@@ -141,13 +141,13 @@ static void sbull_request(struct request_queue *q)
  */
 static int sbull_xfer_bio(struct sbull_dev *dev, struct bio *bio)
 {
-       int i;
-       struct bio_vec *bvec;
-       sector_t sector = bio->bi_sector;
+       struct bio_vec bvec;
+       struct bvec_iter iter;
+       sector_t sector = bio->bi_iter.bi_sector;
 
        /* Do each segment independently. */
-       bio_for_each_segment(bvec, bio, i) {
-               char *buffer = __bio_kmap_atomic(bio, i);
+       bio_for_each_segment(bvec, bio, iter) {
+               char *buffer = __bio_kmap_atomic(bio, iter);
                sbull_transfer(dev, sector,bytes_to_sectors_checked(bio_cur_bytes(bio)),
                                buffer, bio_data_dir(bio) == WRITE);
                sector += (bytes_to_sectors_checked(bio_cur_bytes(bio)));
@@ -167,7 +167,7 @@ static int sbull_xfer_request(struct sbull_dev *dev, struct request *req)
     
        __rq_for_each_bio(bio, req) {
                sbull_xfer_bio(dev, bio);
-               nsect += bio->bi_size/KERNEL_SECTOR_SIZE;
+               nsect += bio->bi_iter.bi_size/KERNEL_SECTOR_SIZE;
        }
        return nsect;
 }
```

## 3.14 - 3.16

### pattern 1

number of instance: 2

#### commit message

```diff
commit 06eb7193dbe2dfdbd05987d3e34e06f2b95267e2
Author: Du Xing <duxing2007@gmail.com>
Date:   Sat Apr 11 14:20:34 2015 +0800

    jiq: fix compiling errors
    
    root cause commits in linux-stable:
    commit b8780c363d808a726a34793caa900923d32b6b80
    Author: Arnd Bergmann <arnd@arndb.de>
    Date:   Mon Apr 7 17:33:06 2014 +0200
    
        sched: remove sleep_on() and friends
    
        This is the final piece in the puzzle, as all patches to remove the
        last users of \(interruptible_\|\)sleep_on\(_timeout\|\) have made it
        into the 3.15 merge window. The work was long overdue, and this
        interface in particular should not have survived the BKL removal
        that was done a couple of years ago.
    
        Citing Jon Corbet from http://lwn.net/2001/0201/kernel.php3":
    
         "[...] it was suggested that the janitors look for and fix all code
          that calls sleep_on() [...] since (1) almost all such code is
          incorrect, and (2) Linus has agreed that those functions should
          be removed in the 2.5 development series".
    
        We haven't quite made it for 2.5, but maybe we can merge this for 3.15.
---
 misc-modules/jiq.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)
```

### pattern 2

number of instance: 1

#### commit message

```
commit a55b0c788e978d3a3a13d2dbaefb8facd23fafd6
Author: Du Xing <duxing2007@gmail.com>
Date:   Sat Apr 11 15:12:25 2015 +0800

    sbull: fix
    
    root cause commits in linux-stable:
    commit b4f42e2831ff9b9fa19252265d7c8985d47eefb9
    Author: Jens Axboe <axboe@fb.com>
    Date:   Thu Apr 10 09:46:28 2014 -0600
    
        block: remove struct request buffer member
    
        This was used in the olden days, back when onions were proper
        yellow. Basically it mapped to the current buffer to be
        transferred. With highmem being added more than a decade ago,
        most drivers map pages out of a bio, and rq->buffer isn't
        pointing at anything valid.
    
        Convert old style drivers to just use bio_data().
    
        For the discard payload use case, just reference the page
        in the bio.
---
 sbull/sbull.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sbull/sbull.c b/sbull/sbull.c
index dbb0b8a5ca2d..d77ea2556bb8 100644
--- a/sbull/sbull.c
+++ b/sbull/sbull.c
@@ -127,7 +127,7 @@ static void sbull_request(struct request_queue *q)
                        (unsigned)(dev - Devices), rq_data_dir(req),
                        blk_rq_pos(req), blk_rq_cur_sectors(req));
                sbull_transfer(dev, blk_rq_pos(req), blk_rq_cur_sectors(req),
-                               req->buffer, rq_data_dir(req));
+                               bio_data(req->bio), rq_data_dir(req));
                ret = 0;
        done:
                if(!__blk_end_request_cur(req, ret)){
```

## 3.16 - 3.18

## 3.18 - 4.1

## 4.1 - 4.4

## 4.4 - 4.9

