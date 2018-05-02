//# pattern-89, witnesses: 5
@@
@@
- dev->blks_per_lun
+ geo->blks_per_lun
//# pattern-99, witnesses: 5
@@
@@
- dev->plane_mode
+ geo->plane_mode
//# pattern-106, witnesses: 5
@@
@@
- dev->pfpg_size
+ geo->pfpg_size
//# pattern-105, witnesses: 3
@@
identifier dev;
identifier info;
identifier s;
@@
 int nvm_write_and_verify(struct nvm_dev * dev, struct nvm_sb_info * info, struct sysblk_scan * s)
 {
     <...
- dev->sec_per_pg
+ geo->sec_per_pg
     ...>
 }
//# pattern-114, witnesses: 2
@@
@@
- dev->nr_luns
+ dev->geo.nr_luns
//# pattern-116, witnesses: 2
@@
@@
- dev->sec_size
+ dev->geo.sec_size
//# pattern-126, witnesses: 2
@@
@@
- dev->sec_per_lun
+ geo->sec_per_lun
