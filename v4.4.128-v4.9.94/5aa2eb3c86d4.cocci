//# pattern-7, witnesses: 13
@@
expression E0;
@@
- E0->pdata.uapi
+ E0->info->uapi
//# pattern-3, witnesses: 8
@@
expression E0;
expression E1;
@@
- E0 < E1->pdata.rpf_count
+ E0 < E1->info->rpf_count
//# pattern-5, witnesses: 7
@@
expression E0;
@@
- E0 < vsp1->pdata.wpf_count
+ E0 < vsp1->info->wpf_count
//# pattern-1, witnesses: 6
@@
expression E0;
identifier fn;
identifier vsp1;
@@
 int fn(struct vsp1_device * vsp1)
 {
     <...
- vsp1->pdata.features & E0
+ vsp1->info->features & E0
     ...>
 }
//# pattern-4, witnesses: 2
@@
expression E0;
identifier fn;
identifier vsp1;
@@
 int fn(struct vsp1_device * vsp1)
 {
     <...
- E0 < vsp1->pdata.uds_count
+ E0 < vsp1->info->uds_count
     ...>
 }
