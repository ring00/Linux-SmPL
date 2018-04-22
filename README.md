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
