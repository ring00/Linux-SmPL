# Linux-SmPL

## 3.10-3.18

```
commit ffbd7c8c14e9f0a66dc1dc992c6026875e37ee30
Author: Daniel Campello <campello@google.com>
Date:   Mon Jul 20 16:27:37 2015 -0700

    Port of sdcardfs to 3.18
    
    Change-Id: Idef6cae51c765f4cae3fa9d9a3419425827400db
    Signed-off-by: Daniel Campello <campello@google.com>
---
 fs/sdcardfs/Kconfig       |   1 -
 fs/sdcardfs/dentry.c      |   9 +-
 fs/sdcardfs/file.c        |  39 +++++----
 fs/sdcardfs/hashtable.h   | 190 ------------------------------------------
 fs/sdcardfs/inode.c       | 204 ++++++++++++++++------------------------------
 fs/sdcardfs/lookup.c      |  25 +++---
 fs/sdcardfs/main.c        | 113 +++++++++++++------------
 fs/sdcardfs/mmap.c        |   3 +-
 fs/sdcardfs/packagelist.c |  39 ++++-----
 fs/sdcardfs/sdcardfs.h    |  33 +++-----
 fs/sdcardfs/super.c       |   6 +-
 11 files changed, 204 insertions(+), 458 deletions(-)
```

### pattern 1

#### error message

```shell
In file included from ../fs/sdcardfs/file.c:22:0:
../fs/sdcardfs/sdcardfs.h: In function ‘prepare_dir’:
../fs/sdcardfs/sdcardfs.h:568:15: error: incompatible types when assigning to type ‘kuid_t {aka struct <anonymous>}’ from type ‘uid_t {aka unsigned int}’
  attrs.ia_uid = uid;
               ^
../fs/sdcardfs/sdcardfs.h:569:15: error: incompatible types when assigning to type ‘kgid_t {aka struct <anonymous>}’ from type ‘gid_t {aka unsigned int}’
  attrs.ia_gid = gid;
```

#### grep result

```shell
➜  linux git:(master) grep -nr "make_kuid"                                      
security/commoncap.c:420:	kroot = make_kuid(fs_ns, root);
security/commoncap.c:467:	return make_kuid(task_ns, rootid);
security/commoncap.c:607:	rootkuid = make_kuid(fs_ns, 0);
security/commoncap.c:623:		rootkuid = make_kuid(fs_ns, le32_to_cpu(nscaps->rootid));
security/commoncap.c:828:	root_uid = make_kuid(new->user_ns, 0);
security/commoncap.c:1001:	kuid_t root_uid = make_kuid(old->user_ns, 0);
security/commoncap.c:1056:			kuid_t root_uid = make_kuid(old->user_ns, 0);
security/integrity/ima/ima_policy.c:814:				entry->uid = make_kuid(current_user_ns(),
security/integrity/ima/ima_policy.c:840:				entry->fowner = make_kuid(current_user_ns(), (uid_t)lnum);
security/apparmor/policy.c:648:	bool root_in_user_ns = uid_eq(current_euid(), make_kuid(user_ns, 0)) ||
security/keys/keyctl.c:833:	uid = make_kuid(current_user_ns(), user);
security/keys/persistent.c:142:		uid = make_kuid(ns, _uid);
block/ioprio.c:118:			uid = make_kuid(current_user_ns(), who);
block/ioprio.c:210:			uid = make_kuid(current_user_ns(), who);
mm/shmem.c:3558:			sbinfo->uid = make_kuid(current_user_ns(), uid);
drivers/staging/lustre/lustre/llite/vvp_object.c:110:		inode->i_uid = make_kuid(&init_user_ns, attr->cat_uid);
drivers/staging/lustre/lustre/llite/file.c:1894:	attr->ia_uid = make_kuid(&init_user_ns, hui->hui_uid);
drivers/staging/lustre/lustre/llite/file.c:3095:		cred->fsuid = make_kuid(&init_user_ns, squash->rsi_uid);
drivers/staging/lustre/lustre/llite/llite_lib.c:1788:		inode->i_uid = make_kuid(&init_user_ns, body->mbo_uid);
drivers/staging/lustre/lustre/llite/dir.c:893:		      !uid_eq(current_euid(), make_kuid(&init_user_ns, id))) ||
drivers/staging/ncpfs/inode.c:407:				data->uid = make_kuid(current_user_ns(), optint);
drivers/staging/ncpfs/inode.c:421:				data->mounted_uid = make_kuid(current_user_ns(), optint);
drivers/staging/ncpfs/inode.c:498:				data.mounted_uid = make_kuid(current_user_ns(), md->mounted_uid);
drivers/staging/ncpfs/inode.c:503:				data.uid = make_kuid(current_user_ns(), md->uid);
drivers/staging/ncpfs/inode.c:517:				data.mounted_uid = make_kuid(current_user_ns(), md->mounted_uid);
drivers/staging/ncpfs/inode.c:522:				data.uid = make_kuid(current_user_ns(), md->uid);
drivers/usb/gadget/legacy/inode.c:1953:		inode->i_uid = make_kuid(&init_user_ns, default_uid);
drivers/usb/gadget/function/f_fs.c:1451:				data->perms.uid = make_kuid(current_user_ns(), value);
drivers/net/tun.c:2969:		owner = make_kuid(current_user_ns(), arg);
drivers/net/wireless/cisco/airo.c:5644:	proc_kuid = make_kuid(&init_user_ns, proc_uid);
arch/powerpc/platforms/cell/spufs/inode.c:643:			root->i_uid = make_kuid(current_user_ns(), option);
arch/s390/hypfs/inode.c:238:			uid = make_kuid(current_user_ns(), option);
ipc/util.c:665:	kuid_t uid = make_kuid(current_user_ns(), in->uid);
fs/proc/base.c:1268:		kloginuid = make_kuid(file->f_cred->user_ns, loginuid);
fs/proc/base.c:1726:				uid = make_kuid(user_ns, 0);
fs/proc/proc_net.c:207:	uid = make_kuid(net->user_ns, 0);
fs/affs/super.c:271:			*uid = make_kuid(current_user_ns(), option);
fs/f2fs/super.c:222:				make_kuid(&init_user_ns, F2FS_DEF_RESUID)) ||
fs/f2fs/super.c:551:			uid = make_kuid(current_user_ns(), arg);
fs/f2fs/super.c:2639:	F2FS_OPTION(sbi).s_resuid = make_kuid(&init_user_ns, F2FS_DEF_RESUID);
fs/f2fs/acl.c:88:				make_kuid(&init_user_ns,
fs/omfs/inode.c:424:			sbi->s_uid = make_kuid(current_user_ns(), option);
fs/ocfs2/acl.c:67:				make_kuid(&init_user_ns,
fs/ext2/super.c:264:	if (!uid_eq(sbi->s_resuid, make_kuid(&init_user_ns, EXT2_DEF_RESUID)) ||
fs/ext2/super.c:519:			uid = make_kuid(current_user_ns(), option);
fs/ext2/super.c:918:	opts.s_resuid = make_kuid(&init_user_ns, le16_to_cpu(es->s_def_resuid));
fs/ext2/acl.c:63:					make_kuid(&init_user_ns,
fs/orangefs/orangefs-utils.c:378:	inode->i_uid = make_kuid(&init_user_ns, new_op->
fs/tracefs/inode.c:185:			uid = make_kuid(current_user_ns(), option);
fs/ntfs/super.c:140:		variable = make_kuid(current_user_ns(), uid_value);	\
fs/open.c:379:		kuid_t root_uid = make_kuid(override_cred->user_ns, 0);
fs/open.c:620:	uid = make_kuid(current_user_ns(), user);
fs/jffs2/acl.c:104:					make_kuid(&init_user_ns,
fs/hugetlbfs/inode.c:1130:			pconfig->uid = make_kuid(current_user_ns(), option);
fs/adfs/super.c:178:			asb->s_uid = make_kuid(current_user_ns(), option);
fs/debugfs/inode.c:90:			uid = make_kuid(current_user_ns(), option);
fs/nfs/flexfilelayout/flexfilelayout.c:485:		acred.uid = make_kuid(&init_user_ns, id);
fs/nfs/nfs3xdr.c:661:	fattr->uid = make_kuid(&init_user_ns, be32_to_cpup(p++));
fs/nfs/inode.c:487:		inode->i_uid = make_kuid(&init_user_ns, -2);
fs/nfs/nfs4idmap.c:730:		*uid = make_kuid(&init_user_ns, id);
fs/nfs/nfs4xdr.c:3958:	*uid = make_kuid(&init_user_ns, -2);
fs/nfs/nfs2xdr.c:294:	fattr->uid = make_kuid(&init_user_ns, be32_to_cpup(p++));
fs/fat/inode.c:1193:			opts->fs_uid = make_kuid(current_user_ns(), option);
fs/hfs/super.c:260:			hsb->s_uid = make_kuid(current_user_ns(), (uid_t)tmp);
fs/nfs_common/nfsacl.c:169:			entry->e_uid = make_kuid(&init_user_ns, id);
fs/udf/super.c:534:			uopt->uid = make_kuid(current_user_ns(), option);
fs/udf/super.c:2097:	uopt.uid = make_kuid(current_user_ns(), overflowuid);
fs/afs/fsclient.c:85:		vnode->vfs_inode.i_uid = make_kuid(&init_user_ns, status->owner);
fs/ceph/caps.c:3106:		inode->i_uid = make_kuid(&init_user_ns, le32_to_cpu(grant->uid));
fs/ceph/inode.c:808:		inode->i_uid = make_kuid(&init_user_ns, le32_to_cpu(info->uid));
fs/hfsplus/options.c:139:			sbi->uid = make_kuid(current_user_ns(), (uid_t)tmp);
fs/posix_acl.c:691:			uid = make_kuid(from, le32_to_cpu(entry->e_id));
fs/posix_acl.c:764:					make_kuid(user_ns,
fs/xfs/xfs_icache.h:117:		dst->eof_uid = make_kuid(current_user_ns(), src->eof_uid);
fs/xfs/xfs_linux.h:194:	return make_kuid(&init_user_ns, uid);
fs/cifs/inode.c:291:			kuid_t uid = make_kuid(&init_user_ns, id);
fs/cifs/cifsacl.c:391:			uid = make_kuid(&init_user_ns, id);
fs/cifs/cifsacl.c:432:		uid = make_kuid(&init_user_ns, id);
fs/cifs/connect.c:1031:	uid = make_kuid(current_user_ns(), value);
fs/fuse/inode.c:174:	inode->i_uid     = make_kuid(&init_user_ns, attr->uid);
fs/fuse/inode.c:516:			d->user_id = make_kuid(current_user_ns(), uv);
fs/fuse/dir.c:861:	stat->uid = make_kuid(&init_user_ns, attr->uid);
fs/coda/coda_linux.c:98:	        inode->i_uid = make_kuid(&init_user_ns, (uid_t) attr->va_uid);
fs/isofs/inode.c:440:			popt->uid = make_kuid(current_user_ns(), option);
fs/ext4/super.c:1767:		uid = make_kuid(current_user_ns(), arg);
fs/ext4/super.c:2048:	if (nodefs || !uid_eq(sbi->s_resuid, make_kuid(&init_user_ns, EXT4_DEF_RESUID)) ||
fs/ext4/super.c:3562:	sbi->s_resuid = make_kuid(&init_user_ns, le16_to_cpu(es->s_def_resuid));
fs/ext4/acl.c:62:				make_kuid(&init_user_ns,
fs/9p/v9fs.c:229:			v9ses->dfltuid = make_kuid(current_user_ns(), option);
fs/9p/v9fs.c:346:				v9ses->uid = make_kuid(current_user_ns(), uid);
fs/quota/quota.c:37:		if ((type == USRQUOTA && uid_eq(current_euid(), make_kuid(current_user_ns(), id))) ||
fs/ubifs/sb.c:630:	c->rp_uid        = make_kuid(&init_user_ns, le32_to_cpu(sup->rp_uid));
fs/autofs4/inode.c:166:			*uid = make_kuid(current_user_ns(), option);
fs/nfsd/nfsxdr.c:89:		iap->ia_uid = make_kuid(&init_user_ns, tmp);
fs/nfsd/flexfilelayout.c:54:		fl->uid = make_kuid(&init_user_ns, u);
fs/nfsd/nfs3xdr.c:110:		iap->ia_uid = make_kuid(&init_user_ns, ntohl(*p++));
fs/nfsd/nfs4idmap.c:636:	*uid = make_kuid(&init_user_ns, id);
fs/nfsd/nfs4xdr.c:563:				kuid_t kuid = make_kuid(&init_user_ns, uid);
fs/nfsd/export.c:572:		exp.ex_anon_uid= make_kuid(&init_user_ns, an_int);
fs/nfsd/export.c:1175:	if (!uid_eq(anonu, make_kuid(&init_user_ns, (uid_t)-2)) &&
fs/nfsd/export.c:1176:	    !uid_eq(anonu, make_kuid(&init_user_ns, 0x10000-2)))
fs/befs/linuxvfs.c:359:		make_kuid(&init_user_ns, fs32_to_cpu(sb, raw_inode->uid));
fs/befs/linuxvfs.c:736:				uid = make_kuid(current_user_ns(), option);
fs/devpts/inode.c:285:			uid = make_kuid(current_user_ns(), option);
fs/hpfs/super.c:344:			*uid = make_kuid(current_user_ns(), option);
fs/reiserfs/xattr_acl.c:107:				make_kuid(&init_user_ns,
fs/jfs/super.c:370:			sbi->uid = make_kuid(current_user_ns(), val);
fs/jfs/jfs_imap.c:3069:	jfs_ip->saved_uid = make_kuid(&init_user_ns, le32_to_cpu(dip->di_uid));
include/linux/quota.h:105:		kqid.uid = make_kuid(from, qid);
include/linux/uidgid.h:123:extern kuid_t make_kuid(struct user_namespace *from, uid_t uid);
include/linux/uidgid.h:143:static inline kuid_t make_kuid(struct user_namespace *from, uid_t uid)
include/linux/fs.h:1471:	inode->i_uid = make_kuid(inode->i_sb->s_user_ns, uid);
include/net/sock.h:1738:	return sk ? sk->sk_uid : make_kuid(net->user_ns, 0);
kernel/auditfilter.c:486:			f->uid = make_kuid(current_user_ns(), f->val);
kernel/signal.c:990:					make_kuid(current_user_ns(), info->si_uid));
kernel/sys.c:231:		uid = make_kuid(cred->user_ns, who);
kernel/sys.c:299:		uid = make_kuid(cred->user_ns, who);
kernel/sys.c:496:	kruid = make_kuid(ns, ruid);
kernel/sys.c:497:	keuid = make_kuid(ns, euid);
kernel/sys.c:572:	kuid = make_kuid(ns, uid);
kernel/sys.c:624:	kruid = make_kuid(ns, ruid);
kernel/sys.c:625:	keuid = make_kuid(ns, euid);
kernel/sys.c:626:	ksuid = make_kuid(ns, suid);
kernel/sys.c:802:	kuid = make_kuid(old->user_ns, uid);
kernel/user_namespace.c:380: *	make_kuid - Map a user-namespace uid pair into a kuid.
kernel/user_namespace.c:392:kuid_t make_kuid(struct user_namespace *ns, uid_t uid)
kernel/user_namespace.c:397:EXPORT_SYMBOL(make_kuid);
kernel/user_namespace.c:1101:			kuid_t uid = make_kuid(ns->parent, id);
net/netfilter/nf_conntrack_standalone.c:493:	root_uid = make_kuid(net->user_ns, 0);
net/netfilter/xt_owner.c:37:		kuid_t uid_min = make_kuid(net->user_ns, info->uid_min);
net/netfilter/xt_owner.c:38:		kuid_t uid_max = make_kuid(net->user_ns, info->uid_max);
net/netfilter/xt_owner.c:85:		kuid_t uid_min = make_kuid(net->user_ns, info->uid_min);
net/netfilter/xt_owner.c:86:		kuid_t uid_max = make_kuid(net->user_ns, info->uid_max);
net/netfilter/nf_conntrack_expect.c:671:	root_uid = make_kuid(net->user_ns, 0);
net/netfilter/xt_recent.c:405:	uid = make_kuid(&init_user_ns, ip_list_uid);
net/netfilter/x_tables.c:1805:	root_uid = make_kuid(net->user_ns, 0);
net/netfilter/nfnetlink_log.c:1085:	root_uid = make_kuid(net->user_ns, 0);
net/sunrpc/auth_gss/svcauth_gss.c:456:		rsci.cred.cr_uid = make_kuid(&init_user_ns, id);
net/sunrpc/auth_gss/auth_gss.c:709:	uid = make_kuid(&init_user_ns, id);
net/sunrpc/auth_gss/gss_rpc_xdr.c:203:	creds->cr_uid = make_kuid(&init_user_ns, tmp);
net/sunrpc/svcauth_unix.c:495:	uid = make_kuid(&init_user_ns, id);
net/sunrpc/svcauth_unix.c:811:	cred->cr_uid = make_kuid(&init_user_ns, svc_getnl(argv)); /* uid */
net/ax25/ax25_uid.c:97:		sax25_kuid = make_kuid(current_user_ns(), sax->sax25_uid);
net/ipv6/route.c:4709:		fl6.flowi6_uid = make_kuid(current_user_ns(),
net/core/fib_rules.c:212:	out.start = make_kuid(current_user_ns(), in->start);
net/core/fib_rules.c:213:	out.end = make_kuid(current_user_ns(), in->end);
net/core/sock.c:2776:		sk->sk_uid	=	make_kuid(sock_net(sk)->user_ns, 0);
net/core/scm.c:51:	kuid_t uid = make_kuid(cred->user_ns, creds->uid);
net/core/scm.c:189:			uid = make_kuid(current_user_ns(), creds.uid);
net/9p/protocol.c:177:				*uid = make_kuid(&init_user_ns,
net/sysctl_net.c:63:	ns_root_uid = make_kuid(net->user_ns, 0);
net/ipv4/route.c:2740:		uid = make_kuid(current_user_ns(), nla_get_u32(tb[RTA_UID]));
```

### API changing commit

```diff
commit 22d917d80e842829d0ca0a561967d728eb1d6303
Author: Eric W. Biederman <ebiederm@xmission.com>
Date:   Thu Nov 17 00:11:58 2011 -0800

    userns: Rework the user_namespace adding uid/gid mapping support
    
    - Convert the old uid mapping functions into compatibility wrappers
    - Add a uid/gid mapping layer from user space uid and gids to kernel
      internal uids and gids that is extent based for simplicty and speed.
      * Working with number space after mapping uids/gids into their kernel
        internal version adds only mapping complexity over what we have today,
        leaving the kernel code easy to understand and test.
    - Add proc files /proc/self/uid_map /proc/self/gid_map
      These files display the mapping and allow a mapping to be added
      if a mapping does not exist.
    - Allow entering the user namespace without a uid or gid mapping.
      Since we are starting with an existing user our uids and gids
      still have global mappings so are still valid and useful they just don't
      have local mappings.  The requirement for things to work are global uid
      and gid so it is odd but perfectly fine not to have a local uid
      and gid mapping.
      Not requiring global uid and gid mappings greatly simplifies
      the logic of setting up the uid and gid mappings by allowing
      the mappings to be set after the namespace is created which makes the
      slight weirdness worth it.
    - Make the mappings in the initial user namespace to the global
      uid/gid space explicit.  Today it is an identity mapping
      but in the future we may want to twist this for debugging, similar
      to what we do with jiffies.
    - Document the memory ordering requirements of setting the uid and
      gid mappings.  We only allow the mappings to be set once
      and there are no pointers involved so the requirments are
      trivial but a little atypical.
    
    Performance:
    
    In this scheme for the permission checks the performance is expected to
    stay the same as the actuall machine instructions should remain the same.
    
    The worst case I could think of is ls -l on a large directory where
    all of the stat results need to be translated with from kuids and
    kgids to uids and gids.  So I benchmarked that case on my laptop
    with a dual core hyperthread Intel i5-2520M cpu with 3M of cpu cache.
    
    My benchmark consisted of going to single user mode where nothing else
    was running. On an ext4 filesystem opening 1,000,000 files and looping
    through all of the files 1000 times and calling fstat on the
    individuals files.  This was to ensure I was benchmarking stat times
    where the inodes were in the kernels cache, but the inode values were
    not in the processors cache.  My results:
    
    v3.4-rc1:         ~= 156ns (unmodified v3.4-rc1 with user namespace support disabled)
    v3.4-rc1-userns-: ~= 155ns (v3.4-rc1 with my user namespace patches and user namespace support disabled)
    v3.4-rc1-userns+: ~= 164ns (v3.4-rc1 with my user namespace patches and user namespace support enabled)
    
    All of the configurations ran in roughly 120ns when I performed tests
    that ran in the cpu cache.
    
    So in summary the performance impact is:
    1ns improvement in the worst case with user namespace support compiled out.
    8ns aka 5% slowdown in the worst case with user namespace support compiled in.
    
    Acked-by: Serge Hallyn <serge.hallyn@canonical.com>
    Signed-off-by: Eric W. Biederman <ebiederm@xmission.com>
---
 fs/proc/base.c                 |  77 ++++++++++++++++++
 include/linux/uidgid.h         |  24 ++++++
 include/linux/user_namespace.h |  30 +++++--
 kernel/user.c                  |  16 ++++
 kernel/user_namespace.c        | 545 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++----------
 5 files changed, 644 insertions(+), 48 deletions(-)
```

### changes made

```
-	dest->i_uid = SDCARDFS_I(dest)->data->d_uid;
-	dest->i_gid = AID_SDCARD_RW;
+	dest->i_uid = make_kuid(&init_user_ns, SDCARDFS_I(dest)->data->d_uid);
+	dest->i_gid = make_kgid(&init_user_ns, AID_SDCARD_RW);
```

## semantic patch

TODO

## pattern 2

### error message

```shell
In file included from ../fs/sdcardfs/file.c:22:0:
../fs/sdcardfs/sdcardfs.h: In function ‘prepare_dir’:
../fs/sdcardfs/sdcardfs.h:574:2: error: too few arguments to function ‘notify_change2’
  notify_change2(parent.mnt, dent, &attrs);
  ^
In file included from ../include/linux/fsnotify_backend.h:13:0,
                 from ../include/linux/fsnotify.h:14,
                 from ../fs/sdcardfs/file.c:21:
../include/linux/fs.h:2318:12: note: declared here
 extern int notify_change2(struct vfsmount *, struct dentry *, struct iattr *, struct inode **);
```

### API changing commit

This is a commit from Android Common Kernel, `notify_change2` never shows up in mainline kernel

```
commit 03ec1392a7913387d7a32073140f69db03d1da3e
Author: Daniel Rosenberg <drosen@google.com>
Date:   Wed Oct 26 16:33:11 2016 -0700

    vfs: Add setattr2 for filesystems with per mount permissions
    
    This allows filesystems to use their mount private data to
    influence the permssions they use in setattr2. It has
    been separated into a new call to avoid disrupting current
    setattr users.
    
    Change-Id: I19959038309284448f1b7f232d579674ef546385
    Signed-off-by: Daniel Rosenberg <drosen@google.com>
---
 fs/attr.c          | 12 ++++++++++--
 fs/coredump.c      |  2 +-
 fs/inode.c         |  6 +++---
 fs/open.c          | 21 ++++++++++++++-------
 fs/utimes.c        |  2 +-
 include/linux/fs.h |  4 ++++
 6 files changed, 33 insertions(+), 14 deletions(-)
```

### changes made

```
-	notify_change2(parent.mnt, dent, &attrs);
+	notify_change2(parent.mnt, dent, &attrs, NULL);
```

## 4.1-4.4

## error message

```
../fs/sdcardfs/packagelist.c:488:1: warning: data definition has no type or storage class
 CONFIGFS_ATTR_STRUCT(package_details);
  ^
../fs/sdcardfs/packagelist.c:488:1: error: type defaults to ‘int’ in declaration of ‘CONFIGFS_ATTR_STRUCT’ [-Werror=implicit-int]
../fs/sdcardfs/packagelist.c:488:1: warning: parameter names (without types) in function declaration
../fs/sdcardfs/packagelist.c:490:8: error: variable ‘package_details_attr_appid’ has initializer but incomplete type
 struct package_details_attribute package_details_attr_##_name = __CONFIGFS_ATTR(_name, _mode, )
```
### API changing commit

The `CONFIG_ATTR_STRUCT` marco is removed in this commit.

```diff
From 517982229f78b2aebf00a8a337e84e8eeea70b8e Mon Sep 17 00:00:00 2001
From: Christoph Hellwig <hch@lst.de>
Date: Sat, 3 Oct 2015 15:32:59 +0200
Subject: [PATCH] configfs: remove old API

Remove the old show_attribute and store_attribute methods and update
the documentation.  Also replace the two C samples with a single new
one in the proper samples directory where people expect to find it.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Signed-off-by: Nicholas Bellinger <nab@linux-iscsi.org>
---
 Documentation/filesystems/Makefile                 |   2 -
 Documentation/filesystems/configfs/Makefile        |   3 -
 Documentation/filesystems/configfs/configfs.txt    |  38 +-
 .../configfs/configfs_example_explicit.c           | 483 ---------------------
 .../filesystems/configfs/configfs_example_macros.c | 446 -------------------
 fs/configfs/file.c                                 |  15 +-
 include/linux/configfs.h                           |  82 ----
 samples/Kconfig                                    |   6 +
 samples/Makefile                                   |   3 +-
 samples/configfs/Makefile                          |   2 +
 samples/configfs/configfs_sample.c                 | 404 +++++++++++++++++
 11 files changed, 428 insertions(+), 1056 deletions(-)
```
# 4.4-4.9

## error message

## API changing commit

A set of wrapper functions are provided for locking on inode.

```diff
From 5955102c9984fa081b2d570cfac75c97eecf8f3b Mon Sep 17 00:00:00 2001
From: Al Viro <viro@zeniv.linux.org.uk>
Date: Fri, 22 Jan 2016 15:40:57 -0500
Subject: [PATCH] wrappers for ->i_mutex access

parallel to mutex_{lock,unlock,trylock,is_locked,lock_nested},
inode_foo(inode) being mutex_foo(&inode->i_mutex).

Please, use those for access to ->i_mutex; over the coming cycle
->i_mutex will become rwsem, with ->lookup() done with it held
only shared.

Signed-off-by: Al Viro <viro@zeniv.linux.org.uk>
---
 arch/powerpc/platforms/cell/spufs/file.c        |  4 +-
 arch/powerpc/platforms/cell/spufs/inode.c       | 12 ++--
 arch/s390/hypfs/inode.c                         |  8 +--
 block/ioctl.c                                   |  4 +-
 drivers/base/devtmpfs.c                         | 12 ++--
 drivers/block/aoe/aoecmd.c                      |  4 +-
 drivers/block/drbd/drbd_debugfs.c               |  4 +-
 drivers/char/mem.c                              |  4 +-
 drivers/char/ps3flash.c                         |  4 +-
 drivers/infiniband/hw/qib/qib_fs.c              | 12 ++--
 drivers/mtd/ubi/cdev.c                          |  4 +-
 drivers/oprofile/oprofilefs.c                   | 16 +++---
 drivers/staging/lustre/lustre/llite/dir.c       |  4 +-
 drivers/staging/lustre/lustre/llite/file.c      | 16 +++---
 drivers/staging/lustre/lustre/llite/llite_lib.c |  4 +-
 drivers/staging/lustre/lustre/llite/llite_nfs.c |  4 +-
 drivers/staging/lustre/lustre/llite/lloop.c     |  4 +-
 drivers/staging/lustre/lustre/llite/rw.c        |  4 +-
 drivers/staging/lustre/lustre/llite/rw26.c      |  4 +-
 drivers/staging/lustre/lustre/llite/vvp_io.c    |  4 +-
 drivers/staging/lustre/lustre/llite/vvp_page.c  | 10 ++--
 drivers/staging/rdma/ipath/ipath_fs.c           |  8 +--
 drivers/usb/gadget/function/f_printer.c         |  4 +-
 drivers/usb/gadget/legacy/inode.c               |  4 +-
 drivers/usb/gadget/udc/atmel_usba_udc.c         | 12 ++--
 drivers/video/fbdev/core/fb_defio.c             |  4 +-
 fs/9p/vfs_file.c                                |  8 +--
 fs/affs/file.c                                  |  8 +--
 fs/afs/flock.c                                  |  4 +-
 fs/afs/write.c                                  |  4 +-
 fs/attr.c                                       |  2 +-
 fs/binfmt_misc.c                                | 12 ++--
 fs/block_dev.c                                  | 20 +++----
 fs/btrfs/file.c                                 | 42 +++++++-------
 fs/btrfs/inode.c                                |  4 +-
 fs/btrfs/ioctl.c                                | 38 ++++++-------
 fs/btrfs/relocation.c                           |  4 +-
 fs/btrfs/scrub.c                                |  4 +-
 fs/btrfs/xattr.c                                |  2 +-
 fs/cachefiles/interface.c                       |  4 +-
 fs/cachefiles/namei.c                           | 40 ++++++-------
 fs/ceph/cache.c                                 |  4 +-
 fs/ceph/caps.c                                  |  4 +-
 fs/ceph/dir.c                                   |  4 +-
 fs/ceph/export.c                                |  4 +-
 fs/ceph/file.c                                  | 18 +++---
 fs/cifs/cifsfs.c                                |  4 +-
 fs/cifs/file.c                                  | 12 ++--
 fs/coda/dir.c                                   |  4 +-
 fs/coda/file.c                                  |  8 +--
 fs/configfs/dir.c                               | 58 +++++++++----------
 fs/configfs/file.c                              |  8 +--
 fs/configfs/inode.c                             |  4 +-
 fs/dax.c                                        |  6 +-
 fs/dcache.c                                     |  4 +-
 fs/debugfs/inode.c                              | 22 ++++----
 fs/devpts/inode.c                               | 12 ++--
 fs/direct-io.c                                  |  8 +--
 fs/ecryptfs/inode.c                             | 32 +++++------
 fs/ecryptfs/mmap.c                              |  4 +-
 fs/efivarfs/file.c                              |  4 +-
 fs/efivarfs/super.c                             |  4 +-
 fs/exec.c                                       |  4 +-
 fs/exofs/file.c                                 |  4 +-
 fs/exportfs/expfs.c                             | 12 ++--
 fs/ext2/ioctl.c                                 | 12 ++--
 fs/ext4/ext4.h                                  |  2 +-
 fs/ext4/extents.c                               | 20 +++----
 fs/ext4/file.c                                  | 18 +++---
 fs/ext4/inode.c                                 | 12 ++--
 fs/ext4/ioctl.c                                 | 20 +++----
 fs/ext4/namei.c                                 |  4 +-
 fs/ext4/super.c                                 |  4 +-
 fs/f2fs/data.c                                  |  4 +-
 fs/f2fs/file.c                                  | 20 +++----
 fs/fat/dir.c                                    |  4 +-
 fs/fat/file.c                                   | 12 ++--
 fs/fuse/dir.c                                   | 10 ++--
 fs/fuse/file.c                                  | 36 ++++++------
 fs/gfs2/file.c                                  |  4 +-
 fs/gfs2/inode.c                                 |  4 +-
 fs/gfs2/quota.c                                 |  8 +--
 fs/hfs/dir.c                                    |  4 +-
 fs/hfs/inode.c                                  |  8 +--
 fs/hfsplus/dir.c                                |  4 +-
 fs/hfsplus/inode.c                              |  8 +--
 fs/hfsplus/ioctl.c                              |  4 +-
 fs/hostfs/hostfs_kern.c                         |  4 +-
 fs/hpfs/dir.c                                   |  6 +-
 fs/hugetlbfs/inode.c                            | 12 ++--
 fs/inode.c                                      |  8 +--
 fs/ioctl.c                                      |  4 +-
 fs/jffs2/file.c                                 |  4 +-
 fs/jfs/file.c                                   |  6 +-
 fs/jfs/ioctl.c                                  |  6 +-
 fs/jfs/super.c                                  |  6 +-
 fs/kernfs/dir.c                                 |  4 +-
 fs/libfs.c                                      | 10 ++--
 fs/locks.c                                      |  6 +-
 fs/logfs/file.c                                 |  8 +--
 fs/namei.c                                      | 74 ++++++++++++-------------
 fs/namespace.c                                  | 10 ++--
 fs/ncpfs/dir.c                                  |  8 +--
 fs/ncpfs/file.c                                 |  4 +-
 fs/nfs/dir.c                                    |  8 +--
 fs/nfs/direct.c                                 | 12 ++--
 fs/nfs/file.c                                   |  4 +-
 fs/nfs/inode.c                                  |  8 +--
 fs/nfs/nfs42proc.c                              |  8 +--
 fs/nfs/nfs4file.c                               | 24 ++++----
 fs/nfsd/nfs4proc.c                              |  4 +-
 fs/nfsd/nfs4recover.c                           | 12 ++--
 fs/nfsd/nfsfh.h                                 |  4 +-
 fs/nfsd/vfs.c                                   |  4 +-
 fs/nilfs2/inode.c                               |  4 +-
 fs/nilfs2/ioctl.c                               |  4 +-
 fs/ntfs/dir.c                                   |  4 +-
 fs/ntfs/file.c                                  |  8 +--
 fs/ntfs/quota.c                                 |  6 +-
 fs/ntfs/super.c                                 | 12 ++--
 fs/ocfs2/alloc.c                                | 32 +++++------
 fs/ocfs2/aops.c                                 |  4 +-
 fs/ocfs2/dir.c                                  |  4 +-
 fs/ocfs2/file.c                                 | 12 ++--
 fs/ocfs2/inode.c                                | 12 ++--
 fs/ocfs2/ioctl.c                                | 12 ++--
 fs/ocfs2/journal.c                              |  8 +--
 fs/ocfs2/localalloc.c                           | 16 +++---
 fs/ocfs2/move_extents.c                         | 16 +++---
 fs/ocfs2/namei.c                                | 28 +++++-----
 fs/ocfs2/quota_global.c                         |  4 +-
 fs/ocfs2/refcounttree.c                         | 12 ++--
 fs/ocfs2/resize.c                               |  8 +--
 fs/ocfs2/suballoc.c                             | 12 ++--
 fs/ocfs2/xattr.c                                | 14 ++---
 fs/open.c                                       | 12 ++--
 fs/overlayfs/copy_up.c                          |  4 +-
 fs/overlayfs/dir.c                              | 12 ++--
 fs/overlayfs/inode.c                            |  4 +-
 fs/overlayfs/readdir.c                          | 20 +++----
 fs/overlayfs/super.c                            | 14 ++---
 fs/proc/kcore.c                                 |  4 +-
 fs/proc/self.c                                  |  4 +-
 fs/proc/thread_self.c                           |  4 +-
 fs/pstore/inode.c                               |  6 +-
 fs/quota/dquot.c                                | 20 +++----
 fs/read_write.c                                 |  4 +-
 fs/readdir.c                                    |  2 +-
 fs/reiserfs/dir.c                               |  4 +-
 fs/reiserfs/file.c                              |  4 +-
 fs/reiserfs/ioctl.c                             |  2 +-
 fs/reiserfs/xattr.c                             | 64 ++++++++++-----------
 fs/tracefs/inode.c                              | 34 ++++++------
 fs/ubifs/dir.c                                  | 18 +++---
 fs/ubifs/file.c                                 |  4 +-
 fs/ubifs/xattr.c                                |  4 +-
 fs/udf/file.c                                   | 10 ++--
 fs/udf/inode.c                                  |  2 +-
 fs/utimes.c                                     |  4 +-
 fs/xattr.c                                      |  8 +--
 fs/xfs/xfs_file.c                               |  6 +-
 fs/xfs/xfs_pnfs.c                               |  4 +-
 include/linux/fs.h                              | 29 +++++++++-
 ipc/mqueue.c                                    |  8 +--
 kernel/audit_fsnotify.c                         |  2 +-
 kernel/audit_watch.c                            |  2 +-
 kernel/events/core.c                            |  4 +-
 kernel/relay.c                                  |  4 +-
 kernel/sched/core.c                             |  4 +-
 mm/filemap.c                                    |  4 +-
 mm/shmem.c                                      | 12 ++--
 mm/swapfile.c                                   | 12 ++--
 net/sunrpc/cache.c                              | 10 ++--
 net/sunrpc/rpc_pipe.c                           | 60 ++++++++++----------
 security/inode.c                                | 10 ++--
 security/integrity/ima/ima_main.c               |  8 +--
 security/selinux/selinuxfs.c                    |  4 +-
 177 files changed, 908 insertions(+), 883 deletions(-)
```
Add a new parameter to `vfs_rename`.

```
From 520c8b16505236fc82daa352e6c5e73cd9870cff Mon Sep 17 00:00:00 2001
From: Miklos Szeredi <mszeredi@suse.cz>
Date: Tue, 1 Apr 2014 17:08:42 +0200
Subject: [PATCH] vfs: add renameat2 syscall

Add new renameat2 syscall, which is the same as renameat with an added
flags argument.

Pass flags to vfs_rename() and to i_op->rename() as well.

Signed-off-by: Miklos Szeredi <mszeredi@suse.cz>
Reviewed-by: J. Bruce Fields <bfields@redhat.com>
---
 Documentation/filesystems/Locking                  |  6 +++-
 Documentation/filesystems/vfs.txt                  | 16 ++++++++++
 arch/x86/syscalls/syscall_64.tbl                   |  1 +
 .../lustre/lustre/include/linux/lustre_compat25.h  |  4 +--
 drivers/staging/lustre/lustre/lvfs/lvfs_linux.c    |  2 +-
 fs/cachefiles/namei.c                              |  2 +-
 fs/ecryptfs/inode.c                                |  2 +-
 fs/namei.c                                         | 34 +++++++++++++++++-----
 fs/nfsd/vfs.c                                      |  2 +-
 include/linux/fs.h                                 |  4 ++-
 10 files changed, 58 insertions(+), 15 deletions(-)
```
Rename `inode_change_ok` to `setattr_prpare`.

```
From 31051c85b5e2aaaf6315f74c72a732673632a905 Mon Sep 17 00:00:00 2001
From: Jan Kara <jack@suse.cz>
Date: Thu, 26 May 2016 16:55:18 +0200
Subject: [PATCH] fs: Give dentry to inode_change_ok() instead of inode

inode_change_ok() will be resposible for clearing capabilities and IMA
extended attributes and as such will need dentry. Give it as an argument
to inode_change_ok() instead of an inode. Also rename inode_change_ok()
to setattr_prepare() to better relect that it does also some
modifications in addition to checks.

Reviewed-by: Christoph Hellwig <hch@lst.de>
Signed-off-by: Jan Kara <jack@suse.cz>
---
 Documentation/filesystems/porting               |  4 ++--
 drivers/staging/lustre/lustre/llite/llite_lib.c |  2 +-
 fs/9p/vfs_inode.c                               |  2 +-
 fs/9p/vfs_inode_dotl.c                          |  2 +-
 fs/adfs/inode.c                                 |  2 +-
 fs/affs/inode.c                                 |  2 +-
 fs/attr.c                                       | 15 +++++++++------
 fs/btrfs/inode.c                                |  2 +-
 fs/ceph/inode.c                                 |  2 +-
 fs/cifs/inode.c                                 |  4 ++--
 fs/ecryptfs/inode.c                             |  2 +-
 fs/exofs/inode.c                                |  2 +-
 fs/ext2/inode.c                                 |  2 +-
 fs/ext4/inode.c                                 |  2 +-
 fs/f2fs/file.c                                  |  2 +-
 fs/fat/file.c                                   |  2 +-
 fs/fuse/dir.c                                   |  2 +-
 fs/gfs2/inode.c                                 |  2 +-
 fs/hfs/inode.c                                  |  2 +-
 fs/hfsplus/inode.c                              |  2 +-
 fs/hostfs/hostfs_kern.c                         |  2 +-
 fs/hpfs/inode.c                                 |  2 +-
 fs/hugetlbfs/inode.c                            |  2 +-
 fs/jffs2/fs.c                                   |  2 +-
 fs/jfs/file.c                                   |  2 +-
 fs/kernfs/inode.c                               |  2 +-
 fs/libfs.c                                      |  2 +-
 fs/logfs/file.c                                 |  2 +-
 fs/minix/file.c                                 |  2 +-
 fs/ncpfs/inode.c                                |  2 +-
 fs/nfsd/nfsproc.c                               |  8 +++-----
 fs/nilfs2/inode.c                               |  2 +-
 fs/ntfs/inode.c                                 |  2 +-
 fs/ocfs2/dlmfs/dlmfs.c                          |  2 +-
 fs/ocfs2/file.c                                 |  2 +-
 fs/omfs/file.c                                  |  2 +-
 fs/orangefs/inode.c                             |  2 +-
 fs/overlayfs/inode.c                            |  2 +-
 fs/proc/base.c                                  |  2 +-
 fs/proc/generic.c                               |  2 +-
 fs/proc/proc_sysctl.c                           |  2 +-
 fs/ramfs/file-nommu.c                           |  2 +-
 fs/reiserfs/inode.c                             |  2 +-
 fs/sysv/file.c                                  |  2 +-
 fs/ubifs/file.c                                 |  2 +-
 fs/udf/file.c                                   |  2 +-
 fs/ufs/inode.c                                  |  2 +-
 fs/utimes.c                                     |  4 ++--
 fs/xfs/xfs_iops.c                               | 10 ++++------
 include/linux/fs.h                              |  2 +-
 mm/shmem.c                                      |  2 +-
 51 files changed, 67 insertions(+), 68 deletions(-)
```

String hash functions now taks an extra parameter.

```
From 8387ff2577eb9ed245df9a39947f66976c6bcd02 Mon Sep 17 00:00:00 2001
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Fri, 10 Jun 2016 07:51:30 -0700
Subject: [PATCH] vfs: make the string hashes salt the hash

We always mixed in the parent pointer into the dentry name hash, but we
did it late at lookup time.  It turns out that we can simplify that
lookup-time action by salting the hash with the parent pointer early
instead of late.

A few other users of our string hashes also wanted to mix in their own
pointers into the hash, and those are updated to use the same mechanism.

Hash users that don't have any particular initial salt can just use the
NULL pointer as a no-salt.

Cc: Vegard Nossum <vegard.nossum@oracle.com>
Cc: George Spelvin <linux@sciencehorizons.net>
Cc: Al Viro <viro@zeniv.linux.org.uk>
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
---
 drivers/staging/lustre/lustre/llite/statahead.c |  8 +++--
 fs/adfs/dir.c                                   |  2 +-
 fs/affs/namei.c                                 |  8 ++---
 fs/autofs4/waitq.c                              |  2 +-
 fs/ceph/inode.c                                 |  4 +--
 fs/ceph/mds_client.c                            |  2 +-
 fs/cifs/dir.c                                   |  2 +-
 fs/dcache.c                                     | 21 ++++++-------
 fs/efivarfs/super.c                             |  4 +--
 fs/fat/namei_msdos.c                            |  2 +-
 fs/fat/namei_vfat.c                             |  4 +--
 fs/fuse/dev.c                                   |  2 --
 fs/fuse/dir.c                                   |  3 +-
 fs/hfs/string.c                                 |  2 +-
 fs/hfsplus/unicode.c                            |  2 +-
 fs/hpfs/dentry.c                                |  2 +-
 fs/isofs/inode.c                                | 14 ++++-----
 fs/jffs2/dir.c                                  |  8 +++--
 fs/jffs2/readinode.c                            |  2 +-
 fs/jffs2/scan.c                                 |  2 +-
 fs/jffs2/summary.c                              |  2 +-
 fs/jffs2/write.c                                |  4 +--
 fs/jfs/namei.c                                  |  2 +-
 fs/kernfs/dir.c                                 |  4 +--
 fs/namei.c                                      | 42 +++++++++++++++----------
 fs/ncpfs/dir.c                                  |  2 +-
 fs/nfs/dir.c                                    |  4 +--
 fs/ntfs/namei.c                                 |  2 +-
 fs/ocfs2/dlm/dlmcommon.h                        |  2 +-
 fs/proc/proc_sysctl.c                           |  2 +-
 fs/sysv/namei.c                                 |  2 +-
 include/linux/stringhash.h                      |  6 ++--
 include/linux/sunrpc/svcauth.h                  |  4 +--
 lib/test_hash.c                                 |  4 +--
 net/core/dev.c                                  |  2 +-
 security/smack/smack_access.c                   |  4 +--
 security/tomoyo/memory.c                        |  2 +-
 security/tomoyo/util.c                          |  2 +-
 38 files changed, 99 insertions(+), 89 deletions(-)
```
Dentry_operations->d_compare no longer needs the `parent` argument.

```
From 6fa67e707559303e086303aeecc9e8b91ef497d5 Mon Sep 17 00:00:00 2001
From: Al Viro <viro@zeniv.linux.org.uk>
Date: Sun, 31 Jul 2016 16:37:25 -0400
Subject: [PATCH] get rid of 'parent' argument of ->d_compare()

Signed-off-by: Al Viro <viro@zeniv.linux.org.uk>
---
 Documentation/filesystems/Locking            |  2 +-
 Documentation/filesystems/porting            |  7 +++++++
 Documentation/filesystems/vfs.txt            |  2 +-
 drivers/staging/lustre/lustre/llite/dcache.c |  2 +-
 fs/adfs/dir.c                                |  2 +-
 fs/affs/namei.c                              |  8 ++++----
 fs/cifs/dir.c                                |  2 +-
 fs/dcache.c                                  |  4 ++--
 fs/efivarfs/super.c                          |  3 +--
 fs/fat/namei_msdos.c                         |  2 +-
 fs/fat/namei_vfat.c                          |  4 ++--
 fs/hfs/hfs_fs.h                              |  2 +-
 fs/hfs/string.c                              |  2 +-
 fs/hfsplus/hfsplus_fs.h                      |  3 +--
 fs/hfsplus/unicode.c                         |  2 +-
 fs/hpfs/dentry.c                             |  2 +-
 fs/isofs/inode.c                             | 15 ++++++---------
 fs/isofs/namei.c                             |  2 +-
 fs/jfs/namei.c                               |  2 +-
 fs/ncpfs/dir.c                               |  6 +++---
 fs/proc/proc_sysctl.c                        |  2 +-
 include/linux/dcache.h                       |  2 +-
 22 files changed, 40 insertions(+), 38 deletions(-)
```

