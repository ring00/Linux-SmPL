//# pattern-3, witnesses: 2
@@
identifier cmd;
identifier filp;
identifier fl;
identifier fn;
@@
 int fn(struct file * filp, int cmd, struct file_lock * fl)
 {
     <...
- nlmclnt_proc(NFS_SERVER(inode)->nlm_host, cmd, fl)
+ nlmclnt_proc(NFS_SERVER(inode)->nlm_host, cmd, fl, NULL)
     ...>
 }
